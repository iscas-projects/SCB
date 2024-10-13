(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var777 0)
(declare-sort var2076 0)
(declare-sort var1205 0)
(declare-sort var130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun children/1926309034 (var1205) (Array Int var2076))
(declare-fun cast-from-var777-to-var1205 (var777) var1205)
(declare-fun append/-1031950772 (String var130) String)
(declare-fun cast-from-var2076-to-var130 (var2076) var130)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var777 var777)
(declare-const var913 var777) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTEval 
(assert (not (= var913 null-var777)))
(define-const var2177 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2177)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2177!1 String)
(assert (= var2177!1 ""))
(assert true)
(define-const var1352 String (append/672562846 var2177!1 "(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2177!2 String)
(assert (= var2177!2 (str.++ var2177!1 "(")))
(define-const var3155 (Array Int var2076) (children/1926309034 (cast-from-var777-to-var1205 var913))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTEval: org.apache.ibatis.ognl.Node[] children> 
(define-const var2280 var2076 (select var3155 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var233 String (append/-1031950772 var1352 (cast-from-var2076-to-var130 var2280))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1352!1 String)
(assert (str.prefixof var1352 var1352!1))
(assert true)
(define-const var3313 String (append/672562846 var233 ")(")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")(") 
(declare-const var233!1 String)
(assert (= var233!1 (str.++ var233 ")(")))
(define-const var3553 (Array Int var2076) (children/1926309034 (cast-from-var777-to-var1205 var913))) ; Statement: $r6 = r1.<org.apache.ibatis.ognl.ASTEval: org.apache.ibatis.ognl.Node[] children> 
(define-const var2793 var2076 (select var3553 1)) ; Statement: $r7 = $r6[1] 
(assert true)
(define-const var207 String (append/-1031950772 var3313 (cast-from-var2076-to-var130 var2793))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var3313!1 String)
(assert (str.prefixof var3313 var3313!1))
(assert true)
(define-const var3998 String (append/672562846 var207 ")")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var207!1 String)
(assert (= var207!1 (str.++ var207 ")")))
(assert true)
(define-const var3269 String (toString/-2075883882 var3998)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var777-to-var1205=([org.apache.ibatis.ognl.ASTEval], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2076-to-var130=([org.apache.ibatis.ognl.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var777=org.apache.ibatis.ognl.ASTEval, var913=r1, var2177=$r0, var1352=$r4, var2076=org.apache.ibatis.ognl.Node, var1205=org.apache.ibatis.ognl.SimpleNode, var3155=$r2, var2280=$r3, var130=java.lang.Object, var233=$r5, var3313=$r8, var3553=$r6, var2793=$r7, var207=$r9, var3998=$r10, var3269=$r11}
; {org.apache.ibatis.ognl.ASTEval=var777, r1=var913, $r0=var2177, $r4=var1352, org.apache.ibatis.ognl.Node=var2076, org.apache.ibatis.ognl.SimpleNode=var1205, $r2=var3155, $r3=var2280, java.lang.Object=var130, $r5=var233, $r8=var3313, $r6=var3553, $r7=var2793, $r9=var207, $r10=var3998, $r11=var3269}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTEval;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r2 = r1.<org.apache.ibatis.ognl.ASTEval: org.apache.ibatis.ognl.Node[] children>;	$r3 = $r2[0];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")(");	$r6 = r1.<org.apache.ibatis.ognl.ASTEval: org.apache.ibatis.ognl.Node[] children>;	$r7 = $r6[1];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1