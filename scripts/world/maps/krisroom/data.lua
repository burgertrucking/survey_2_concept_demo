return {
  version = "1.11",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 5,
  nextobjectid = 32,
  properties = {
    ["light"] = true
  },
  tilesets = {
    {
      name = "krisroom",
      firstgid = 1,
      filename = "../../tilesets/krisroom.tsx",
      exportfilename = "../../tilesets/krisroom.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 1,
      name = "background",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
        17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32,
        33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48,
        49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64,
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
        81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96,
        97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
        113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128,
        129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144,
        145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160,
        161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176,
        177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 160,
          width = 480,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 80,
          width = 40,
          height = 360,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 80,
          width = 40,
          height = 360,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 92,
          y = 400,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 370,
          y = 400,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 252,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 370,
          y = 438,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 190,
          y = 200,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 380,
          y = 200,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 200,
          width = 100,
          height = 100,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 464,
          y = 202,
          width = 100,
          height = 100,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 82,
          y = 364,
          width = 107.087,
          height = 42.4948,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 10,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 310,
          y = 460,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "krishallway",
            ["marker"] = "entryA"
          }
        },
        {
          id = 16,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 202,
          y = 198,
          width = 56,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "krisroom.asrieldresser"
          }
        },
        {
          id = 17,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 391.849,
          y = 199.273,
          width = 56,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "krisroom.krisdresser"
          }
        },
        {
          id = 18,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 470,
          y = 216,
          width = 82,
          height = 78,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "krisroom.krisbed"
          }
        },
        {
          id = 19,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 84,
          y = 196,
          width = 88,
          height = 104,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "krisroom.asrielbed"
          }
        },
        {
          id = 20,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 160,
          width = 66,
          height = 38,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "krisroom.window"
          }
        },
        {
          id = 22,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 84,
          y = 366,
          width = 96.8,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "krisroom.asrieldesk",
            ["sprite"] = "world/events/krisroom/asrieldesk"
          }
        },
        {
          id = 23,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 476.838,
          y = 347.155,
          width = 66.1988,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "krisroom.redwagon",
            ["solid"] = true
          }
        },
        {
          id = 24,
          name = "sprite",
          type = "",
          shape = "point",
          x = 82,
          y = 336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["texture"] = "world/krisroom/asrieldesk"
          }
        },
        {
          id = 26,
          name = "sprite",
          type = "",
          shape = "point",
          x = 470,
          y = 330,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["texture"] = "world/krisroom/redwagon"
          }
        },
        {
          id = 28,
          name = "sprite",
          type = "",
          shape = "point",
          x = 464,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["texture"] = "world/krisroom/bedsheet/untucked"
          }
        },
        {
          id = 29,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 530,
          y = 318,
          width = 24,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "krisroom.stain"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 2,
          name = "spawn",
          type = "",
          shape = "point",
          x = 325,
          y = 295,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "spawn_intro",
          type = "",
          shape = "point",
          x = 512,
          y = 265,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "entry",
          type = "",
          shape = "point",
          x = 330.667,
          y = 420,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
