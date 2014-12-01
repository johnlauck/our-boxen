class people::johnlauck {
  notify { 'class people::johnlauck declared': }

  include people::johnlauck::applications
  include people::johnlauck::shell
}
