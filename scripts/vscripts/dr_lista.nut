local e = null
while (e = Entities.FindByClassname(e, "prop_dynamic")) {
  local p = e.GetMoveParent()
  printl("DRL " + e.GetModelName() + " " + e.GetOrigin() + " parent " + (p ? p.GetName() + " " + p.GetOrigin() : "-"))
}
e = null
while (e = Entities.FindByClassname(e, "func_movelinear")) printl("DRM " + e.GetName() + " " + e.GetOrigin())
