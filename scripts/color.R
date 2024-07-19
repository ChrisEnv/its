# Define a minimalistic custom color palette

minimal_palette <- c(
  "muted_blue" = "#4E79A7",
  "light_blue" = "#A0CBE8",
  "muted_orange" = "#F28E2B",
  "light_orange" = "#FFBE7D",
  "muted_green" = "#59A14F",
  "light_green" = "#8CD17D",
  "muted_yellow" = "#B6992D",
  "light_yellow" = "#F1CE63",
  "muted_teal" = "#499894",
  "light_teal" = "#86BCB6"
)

hex_to_rgba <- function(hex, alpha = 1) {
  rgb <- col2rgb(hex) / 255
  sprintf("rgba(%d, %d, %d, %.2f)", rgb[1] * 255, rgb[2] * 255, rgb[3] * 255, alpha)
}