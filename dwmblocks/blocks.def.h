//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
  /*Icon*/              /*Command*/                                   /*Update Interval*/   /*Update Signal*/
  // atualizações de software (atualiza a cada 30 minutos)
  {"", "$HOME/.config/scripts/updates.sh",                            1800,                 0               },
  // volume https://unix.stackexchange.com/a/89583
  {"", "$HOME/.config/scripts/volume.sh",                             0,                    11              },
  // sinal do wifi (atualiza a cada 5 segundos)
  {"", "$HOME/.config/scripts/wifi.sh",                               5,                    0               },
  // bateria (atualiza a cada 2 minutos)
  {"", "$HOME/.config/scripts/battery.sh",                            120,                  0               },
  // cpu em uso (atualiza a cada 2 segundos)
  {"", "$HOME/.config/scripts/cpu.sh",                                2,                    0               },
  // memória RAM livre (atualiza a cada 5 segundos)
  {"", "$HOME/.config/scripts/memory.sh",                             5,                    0               },
  // previsão do tempo (atualiza a cada 1 hora)
  {"", "$HOME/.config/scripts/weather.sh",                            3600,                 0               },
  // data (semana do ano) dd.mm.YYYY, HH:MM, atualizado a cada minuto
  {"", "date '+(W%V) %Y-%m-%d %H:%M'",                                60,                   0               },
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ";
static unsigned int delimLen = 1;
