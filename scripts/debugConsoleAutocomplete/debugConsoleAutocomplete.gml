///@description		Try to autocomplete a debug console command.
///@param {str}		dConIncomplete

for (var i = 0; i < array_length_1d(dConCommands); i++)
{
	if (string_copy(dConCommands[i], 1, string_length(argument[0])) == argument[0])
	{
		keyboard_string = dConCommands[i];
	}
}