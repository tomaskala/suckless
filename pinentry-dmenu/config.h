/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int bottom = 0;
static int embedded = 0;
static int minpwlen = 32;
static int mon = -1;

static const char *asterisk = "*";
static const char *fonts[] = {
  "mono:pixelsize=15:antialias=true:autohint=true"
};
static const char *prompt = NULL;
static const char *colors[SchemeLast][4] = {
  [SchemePrompt] = { "#ebdbb2", "#1d2021" },
  [SchemeNormal] = { "#ebdbb2", "#1d2021" },
  [SchemeSelect] = { "#1d2021", "#ebdbb2" },
  [SchemeDesc]   = { "#ebdbb2", "#1d2021" }
};
