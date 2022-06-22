//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
  /*Icon*/              /*Command*/                                   /*Update Interval*/   /*Update Signal*/
  // Atualizações de software
  {"", "$HOME/.config/scripts/updates.sh",                            7200,                 0               },
  // memória RAM livre
  {"", "$HOME/.config/scripts/memory.sh",                             5,                    0               },
  // volume https://unix.stackexchange.com/a/89583
  {"", "$HOME/.config/scripts/volume.sh",                             0,                    11              },
  // tempo a cada 3h
  {"", "$HOME/.config/scripts/weather.sh",                            10800,                0               },
  // bateria a cada 5m
  {"", "$HOME/.config/scripts/battery.sh",                            300,                  0               },
  // data (semana do ano) dd.mm.YYYY, HH:MM, atualizado a cada minuto
  {"", "date '+(W%V) %d.%m.%Y, %H:%M'",                               60,                   0               },
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "  ";
static unsigned int delimLen = 3;
