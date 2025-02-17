# Linux-compatible Nintendo AST Creator
This is a fork to allow Linux users to build this command-line tool as well.

Simply run `make` in the base directory, and then run the generated binary `ASTCreate`.

No special dependencies required, the C++ standard library should suffice.

# Original Readme
This is a command line tool intended to convert audio into a lossless encoding of the Nintendo AST format found in games such as `Super Mario Galaxy` and `Mario Kart: Double Dash`.

The resulting audio file is also compatible with lossy interpretations of AST as seen in `The Legend of Zelda: Twilight Princess`.

## Usage

```
ASTCreate <input file> [optional arguments]

OPTIONAL ARGUMENTS:
	-o [output file]                           (default: same as input minus extension)
	-s [loop start sample]                     (default: 0)
	-t [loop start in microseconds]            (ex: 30000000 would be the equivalent of 30 seconds, or 960000 samples with a sample rate of 32000 Hz)
	-n                                         (disables looping)
	-e [loop end sample / total samples]       (default: number of samples in source file)
	-f [loop end in microseconds / total time]
	-r [sample rate]                           (default: same as source file / argument intended to change speed of audio rather than size)
	-h                                         (shows help text)


EXAMPLE USAGE:
	ASTCreate inputfile.wav -o outputfile.ast -s 158462 -e 7485124
	ASTCreate "use quotations if filename contains spaces.wav" -n -f 95000000
```

## Notes
This program will only work with WAV files (.wav) encoded with signed 16-bit PCM.

If the source file is anything other than a WAV file, please convert it first.

Also, please ensure the input/output filenames do not contain Unicode characters.
