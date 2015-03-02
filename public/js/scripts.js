$(document).ready(function(){
	var myAudioContext;
	var oscillator;
	var gainNode;
	var isPlaying = false;
	var analyser;
	var theBuffer;
	var DEBUGCANVAS;
	var mediaStreamSource;
	var detectorElem;
	var canvasElem;
	var waveCanvas;
	var pitchElem;
	var noteElem;
	var detuneElem;
	var detuneAmount;

	function playSound(freq, event) {
		myAudioContext = new webkitAudioContext();

		oscillator = myAudioContext.createOscillator();
		gainNode = myAudioContext.createGain();

		oscillator.type = 'saw';

		oscillator.frequency.value = freq;

		gainNode.connect(myAudioContext.destination);
		oscillator.connect(gainNode);

		oscillator.start(0);

		function soundStop(){
			oscillator.stop(0);
			oscillator.disconnect();
		}

		setTimeout(soundStop, 1500);
	}

	$("#start").on("click", function(){
		$(this).remove();
		playSound(200);
	});

});
