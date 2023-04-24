maze = %{
  south: %{
    west: %{
      south: %{
        east: %{
          south: %{
            east: %{
              south: "Exit!"
            }
          }
        }
      }
    }
  }
}
IO.inspect(maze.south.west.south.east.south.east.south)

maze = %{
  "south" => %{
    "east" => %{
      "south" => %{
        "west" => %{
          "south" => %{
            "west" => %{
              "south" => %{
                "east" => %{
                  "south" => "Exit!"
                }
              }
            }
          }
        }
      }
    }
  }
}
IO.inspect(maze["south"]["east"]["south"]["west"]["south"]["west"]["south"]["east"]["south"])

treasure_map = %{
  "south ten paces" => %{
    10 => %{
      :"east three paces" => %{
        [1, 2, 3] => %{
          {"turn", "right"} => %{
            :dig => "gold"
          }
        }
      }
    }
  }
}
IO.inspect(treasure_map["south ten paces"][10][:"east three paces"][[1, 2, 3]][{"turn", "right"}].dig)

treasure_map = %{
  "south ten paces" => %{
    10 => %{
      :"east three paces" => %{
        [1, 2, 3] => %{
          {"turn", "right"} => %{
            :dig => "gold"
          }
        }
      }
    }
  }
}
treasure_map = %{treasure_map | "south ten paces" => %{
  10 => %{
    :"east three paces" => %{
      [1, 2, 3] => %{
        {"turn", "right"} => %{
          :dig => "taken"
        }
      }
    }
  }
} }
IO.inspect(treasure_map)

maze = %{
  "south" => %{
    "east" => %{
      "south" => %{
        "west" => %{
          "south" => %{
            "west" => %{
              "south" => %{
                "east" => %{
                  "south" => "Exit!"
                }
              }
            }
          }
        }
      }
    }
  }
}
%{
  "south" => %{
    "east" => %{
      "south" => %{
        "west" => %{
          "south" => %{
            "west" => %{
              "south" => %{
                "east" => %{
                  "south" => exit
                }
              }
            }
          }
        }
      }
    }
  }
} = maze
IO.inspect(exit)

custom_maze = %{
  south: %{
    east: %{
      north: %{
        east: %{
          south: %{
            west: %{
              south: %{
                west: %{
                  south: %{ east: "Exit!" }
                }
              }
            }
          }
        }
      }
    }
  }
}

custom_maze[:south][:east][:north][:east][:south][:west][:south][:west][:south][:east]
