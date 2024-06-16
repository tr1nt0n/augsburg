ServerOptions.devices;

(
s.options.inDevice("Built-in Microph");
s.options.outDevice("Built-in Output");
//s.boot;
// s.meter;
)

// test

(
x = {
	var sig;
	sig = SoundIn.ar(0!2);
	sig = GrainIn.ar(1, Dust.ar(20), 0.08, sig);
}.play
)


// 一 processing


// synth


(

SynthDef.new(
	\chorale,
	{
		arg hardwareInput, inputGain=1, outputBus, amp=0, frequencyMultiplier=exprand(7, 13);
		var trackedSignal, initFreq, initSine, frequency, envelope, synthSignal;

		trackedSignal = SoundIn.ar(hardwareInput, inputGain);
		initFreq = Pitch.kr(in:trackedSignal, execFreq: 200.0, minFreq: 220.0, maxFreq: 20000, clar: 1);
		frequencyMultiplier = frequencyMultiplier / 8;
		initSine = SinOsc.ar(initFreq * frequencyMultiplier);
		frequency = Pitch.kr(in:initSine, execFreq: 200.0, minFreq: 220.0, maxFreq: 20000, clar: 1);

		envelope = Amplitude.kr(trackedSignal);

		synthSignal = Formant.ar(
		fundfreq: frequency,
		formfreq: frequency * 9/4,
		bwfreq: frequency * 3/2
		);

		synthSignal = synthSignal * envelope;

		synthSignal = Limiter.ar(
			in: FreeVerb.ar(
				in: synthSignal,
				mix: 1,
				room:0.7,
				damp:0,
			),
			// in: synthSignal,
			level: 0.5,
			dur: 0.01,
		);

		Out.ar(outputBus, synthSignal);
	}
).add;

)

// collection


(

4.collect({
	arg n;
	Synth(\chorale, [
		\hardwareInput,
		0,
		\outputBus,
		0,
		amp: 0.05,
		frequencyMultiplier:exprand(7, 13),
	]);
});

)