(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3460 0)
(declare-sort var900 0)
(declare-sort var995 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getID/-1175882104 (var3460) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun _content/913863558 (var3460) var900)
(declare-fun append/-1031950772 (String var995) String)
(declare-fun cast-from-var900-to-var995 (var900) var995)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3460 var3460)
(declare-const var149 var3460) ; Statement: r1 := @this: org.apache.poi.xdgf.usermodel.XDGFMaster 
(assert (not (= var149 null-var3460)))
(define-const var3212 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3212)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3212!1 String)
(assert (= var3212!1 ""))
(assert true)
(define-const var2478 String (append/672562846 var3212!1 "<Master ID=\u0022")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<Master ID=\"") 
(declare-const var3212!2 String)
(assert (= var3212!2 (str.++ var3212!1 "<Master ID=\u0022")))
(assert true)
(define-const var2464 Int (getID/-1175882104 var149)) ; Statement: $l0 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.XDGFMaster: long getID()>() 
(assert true)
(define-const var461 String (append/-901862667 var2478 var2464)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2478!1 String)
(assert (str.prefixof var2478 var2478!1))
(assert true)
(define-const var2053 String (append/672562846 var461 "\u0022 ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" ") 
(declare-const var461!1 String)
(assert (= var461!1 (str.++ var461 "\u0022 ")))
(define-const var1694 var900 (_content/913863558 var149)) ; Statement: $r4 = r1.<org.apache.poi.xdgf.usermodel.XDGFMaster: org.apache.poi.xdgf.usermodel.XDGFMasterContents _content> 
(assert true)
(define-const var4 String (append/-1031950772 var2053 (cast-from-var900-to-var995 var1694))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2053!1 String)
(assert (str.prefixof var2053 var2053!1))
(assert true)
(define-const var1540 String (append/672562846 var4 ">")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var4!1 String)
(assert (= var4!1 (str.++ var4 ">")))
(assert true)
(define-const var2999 String (toString/-2075883882 var1540)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getID/-1175882104=([org.apache.poi.xdgf.usermodel.XDGFMaster], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), _content/913863558=([org.apache.poi.xdgf.usermodel.XDGFMaster], org.apache.poi.xdgf.usermodel.XDGFMasterContents), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var900-to-var995=([org.apache.poi.xdgf.usermodel.XDGFMasterContents], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3460=org.apache.poi.xdgf.usermodel.XDGFMaster, var149=r1, var3212=$r0, var2478=$r2, var2464=$l0, var461=$r3, var2053=$r5, var900=org.apache.poi.xdgf.usermodel.XDGFMasterContents, var1694=$r4, var995=java.lang.Object, var4=$r6, var1540=$r7, var2999=$r8}
; {org.apache.poi.xdgf.usermodel.XDGFMaster=var3460, r1=var149, $r0=var3212, $r2=var2478, $l0=var2464, $r3=var461, $r5=var2053, org.apache.poi.xdgf.usermodel.XDGFMasterContents=var900, $r4=var1694, java.lang.Object=var995, $r6=var4, $r7=var1540, $r8=var2999}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xdgf.usermodel.XDGFMaster;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<Master ID=\"");	$l0 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.XDGFMaster: long getID()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" ");	$r4 = r1.<org.apache.poi.xdgf.usermodel.XDGFMaster: org.apache.poi.xdgf.usermodel.XDGFMasterContents _content>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1