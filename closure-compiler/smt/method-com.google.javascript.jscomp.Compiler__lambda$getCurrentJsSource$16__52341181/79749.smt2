(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var977 0)
(declare-sort var1452 0)
(declare-sort var637 0)
(declare-sort var200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var637-init () (Array Int var637))
(declare-fun getLocation/-1599913194 (var1452) String)
(declare-fun cast-from-String-to-var637 (String) var637)
(declare-fun var200_format/-38845327 (String (Array Int var637)) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toSource/141578663 (var977 var1452) String)
(declare-const null-var977 var977)
(declare-const null-String String)
(declare-const null-var1452 var1452)
(declare-const null-__Array__Int__var637__ (Array Int var637))
(declare-const var1709 var977) ; Statement: r5 := @this: com.google.javascript.jscomp.Compiler 
(assert (not (= var1709 null-var977)))
(declare-const var3143 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3143 null-String)))
(declare-const var3643 var1452) ; Statement: r2 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3643 null-var1452)))
(define-const var773 (Array Int var637) arr-var637-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var1241 String (getLocation/-1599913194 var3643)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: java.lang.String getLocation()>() 
(declare-const var773!1 (Array Int var637))
(assert (not (= var773!1 null-__Array__Int__var637__)))
(assert (= (select var773!1 0) (cast-from-String-to-var637 var1241))) ; Statement: $r1[0] = $r3 
(define-const var709 String (var200_format/-38845327 "// %s\n" var773!1)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("// %s\n", $r1) 
(assert true)
(define-const var1987 String (append/672562846 var3143 var709)) ; Statement: $r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3143!1 String)
(assert (= var3143!1 (str.++ var3143 var709)))
(assert true)
(define-const var1065 String (toSource/141578663 var1709 var3643)) ; Statement: $r6 = virtualinvoke r5.<com.google.javascript.jscomp.Compiler: java.lang.String toSource(com.google.javascript.rhino.Node)>(r2) 
(assert true)
(define-const var2208 String (append/672562846 var1987 var1065)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1987!1 String)
(assert (= var1987!1 (str.++ var1987 var1065)))
(assert true)
;(assert (append/672562846 var2208 "\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2208!1 String)
(assert (= var2208!1 (str.++ var2208 "\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var637-init=([], java.lang.Object[]), getLocation/-1599913194=([com.google.javascript.rhino.Node], java.lang.String), cast-from-String-to-var637=([java.lang.String], java.lang.Object), var200_format/-38845327=([java.lang.String, java.lang.Object[]], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toSource/141578663=([com.google.javascript.jscomp.Compiler, com.google.javascript.rhino.Node], java.lang.String)}
; {var977=com.google.javascript.jscomp.Compiler, var1709=r5, var3143=r0, var1452=com.google.javascript.rhino.Node, var3643=r2, var637=java.lang.Object, var773=$r1, var1241=$r3, var200=com.google.javascript.jscomp.base.format.SimpleFormat, var709=$r4, var1987=$r7, var1065=$r6, var2208=$r8}
; {com.google.javascript.jscomp.Compiler=var977, r5=var1709, r0=var3143, com.google.javascript.rhino.Node=var1452, r2=var3643, java.lang.Object=var637, $r1=var773, $r3=var1241, com.google.javascript.jscomp.base.format.SimpleFormat=var200, $r4=var709, $r7=var1987, $r6=var1065, $r8=var2208}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r5 := @this: com.google.javascript.jscomp.Compiler;	r0 := @parameter0: java.lang.StringBuilder;	r2 := @parameter1: com.google.javascript.rhino.Node;	$r1 = newarray (java.lang.Object)[1];	$r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: java.lang.String getLocation()>();	$r1[0] = $r3;	$r4 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("// %s\n", $r1);	$r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke r5.<com.google.javascript.jscomp.Compiler: java.lang.String toSource(com.google.javascript.rhino.Node)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	return
;block_num 1