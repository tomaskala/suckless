/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nobody";

static const char *colorname[NUMCOLS] = {
  [INIT] =   "#1d2021",   /* after initialization */
  [INPUT] =  "#427b58",   /* during input */
  [FAILED] = "#d3869b",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
