//map variables to soundcard
SndBuf kick => dac;
SndBuf snare => dac;

//load sound files, map to variables
me.dir() + "samples/kick.wav" => kick.read;
me.dir() + "samples/snare.wav" => snare.read;

//ensure samples don't playback when loaded
kick.samples() => kick.pos;
snare.samples() => snare.pos;

//manually encode binary drum patterns
[1,0,0,0,1,0,0,0] @=> int kickPattern1[];
[0,0,1,0,0,0,1,0] @=> int kickPattern2[];
[1,0,1,0,1,0,1,0] @=> int snarePattern1[];
[1,1,1,1,0,1,1,1] @=> int snarePattern2[];

//play kick/snare pattern arrays
fun void playSection(int kickA[], int snareA[], float beatTime)
{
    for (0 => int i; i < kickA.cap(); i++)
    {
        if (kickA[i])
        {
			0 => kick.pos;
        }
		if (snareA[i])
		{
			0 => snare.pos;
		}
		beatTime::second => now;
    }
}

//main
while(true)
{
	playSection(kickPattern1,snarePattern1,0.2);
	playSection(kickPattern2,snarePattern2,0.2);
	playSection(kickPattern1,snarePattern2,0.2);
	playSection(kickPattern2,snarePattern1,0.2);
}