(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2226 0)
(declare-sort var2473 0)
(declare-sort var2046 0)
(declare-sort var2754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun children/1926309034 (var2046) (Array Int var2473))
(declare-fun cast-from-var2226-to-var2046 (var2226) var2046)
(declare-fun append/-1031950772 (String var2754) String)
(declare-fun cast-from-var2473-to-var2754 (var2473) var2754)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun targetType/-907470920 (var2226) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2226 var2226)
(declare-const var318 var2226) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTInstanceof 
(assert (not (= var318 null-var2226)))
(define-const var154 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var154)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var154!1 String)
(assert (= var154!1 ""))
(define-const var495 (Array Int var2473) (children/1926309034 (cast-from-var2226-to-var2046 var318))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTInstanceof: org.apache.ibatis.ognl.Node[] children> 
(define-const var2273 var2473 (select var495 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var2484 String (append/-1031950772 var154!1 (cast-from-var2473-to-var2754 var2273))) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var154!2 String)
(assert (str.prefixof var154!1 var154!2))
(assert true)
(define-const var3840 String (append/672562846 var2484 " instanceof ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" instanceof ") 
(declare-const var2484!1 String)
(assert (= var2484!1 (str.++ var2484 " instanceof ")))
(define-const var91 String (targetType/-907470920 var318)) ; Statement: $r5 = r1.<org.apache.ibatis.ognl.ASTInstanceof: java.lang.String targetType> 
(assert true)
(define-const var3070 String (append/672562846 var3840 var91)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3840!1 String)
(assert (= var3840!1 (str.++ var3840 var91)))
(assert true)
(define-const var1586 String (toString/-2075883882 var3070)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var2226-to-var2046=([org.apache.ibatis.ognl.ASTInstanceof], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2473-to-var2754=([org.apache.ibatis.ognl.Node], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), targetType/-907470920=([org.apache.ibatis.ognl.ASTInstanceof], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2226=org.apache.ibatis.ognl.ASTInstanceof, var318=r1, var154=$r0, var2473=org.apache.ibatis.ognl.Node, var2046=org.apache.ibatis.ognl.SimpleNode, var495=$r2, var2273=$r3, var2754=java.lang.Object, var2484=$r4, var3840=$r6, var91=$r5, var3070=$r7, var1586=$r8}
; {org.apache.ibatis.ognl.ASTInstanceof=var2226, r1=var318, $r0=var154, org.apache.ibatis.ognl.Node=var2473, org.apache.ibatis.ognl.SimpleNode=var2046, $r2=var495, $r3=var2273, java.lang.Object=var2754, $r4=var2484, $r6=var3840, $r5=var91, $r7=var3070, $r8=var1586}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTInstanceof;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.ognl.ASTInstanceof: org.apache.ibatis.ognl.Node[] children>;	$r3 = $r2[0];	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" instanceof ");	$r5 = r1.<org.apache.ibatis.ognl.ASTInstanceof: java.lang.String targetType>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1