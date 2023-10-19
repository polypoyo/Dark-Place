return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 23,
  height = 21,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 7,
  nextobjectid = 30,
  properties = {},
  tilesets = {
    {
      name = "reds_house_2f",
      firstgid = 1,
      filename = "../../../tilesets/reds_house_2f.tsx",
      exportfilename = "../../../tilesets/reds_house_2f.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 23,
      height = 21,
      id = 1,
      name = "tiles",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
          id = 13,
          name = "",
          class = "",
          shape = "rectangle",
          x = 192,
          y = 480,
          width = 352,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          class = "",
          shape = "rectangle",
          x = 544,
          y = 256,
          width = 32,
          height = 224,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          class = "",
          shape = "rectangle",
          x = 192,
          y = 224,
          width = 352,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          class = "",
          shape = "rectangle",
          x = 352,
          y = 320,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          class = "",
          shape = "rectangle",
          x = 224,
          y = 352,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          class = "",
          shape = "rectangle",
          x = 416,
          y = 256,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          class = "",
          shape = "rectangle",
          x = 416,
          y = 288,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          class = "",
          shape = "rectangle",
          x = 160,
          y = 224,
          width = 32,
          height = 256,
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
          id = 10,
          name = "spawn",
          class = "",
          shape = "point",
          x = 480,
          y = 384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "entry",
          class = "",
          shape = "point",
          x = 512,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
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
          id = 23,
          name = "",
          class = "",
          shape = "rectangle",
          x = 416,
          y = 320,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "",
          class = "",
          shape = "rectangle",
          x = 448,
          y = 320,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          class = "",
          shape = "rectangle",
          x = 224,
          y = 352,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 8,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "",
          class = "",
          shape = "rectangle",
          x = 256,
          y = 352,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 9,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "",
          class = "",
          shape = "rectangle",
          x = 192,
          y = 352,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 2147483657,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
