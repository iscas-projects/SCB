(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1129 0)
(declare-sort var3284 0)
(declare-sort var241 0)
(declare-sort var3552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun children/1926309034 (var241) (Array Int var3284))
(declare-fun cast-from-var1129-to-var241 (var1129) var241)
(declare-fun append/-1031950772 (String var3552) String)
(declare-fun cast-from-var3284-to-var3552 (var3284) var3552)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1129 var1129)
(declare-const var3520 var1129) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTSelectFirst 
(assert (not (= var3520 null-var1129)))
(define-const var3608 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3608)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3608!1 String)
(assert (= var3608!1 ""))
(assert true)
(define-const var78 String (append/672562846 var3608!1 "{^ ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{^ ") 
(declare-const var3608!2 String)
(assert (= var3608!2 (str.++ var3608!1 "{^ ")))
(define-const var2043 (Array Int var3284) (children/1926309034 (cast-from-var1129-to-var241 var3520))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTSelectFirst: org.apache.ibatis.ognl.Node[] children> 
(define-const var1413 var3284 (select var2043 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var796 String (append/-1031950772 var78 (cast-from-var3284-to-var3552 var1413))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var78!1 String)
(assert (str.prefixof var78 var78!1))
(assert true)
(define-const var862 String (append/672562846 var796 " }")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }") 
(declare-const var796!1 String)
(assert (= var796!1 (str.++ var796 " }")))
(assert true)
(define-const var782 String (toString/-2075883882 var862)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var1129-to-var241=([org.apache.ibatis.ognl.ASTSelectFirst], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3284-to-var3552=([org.apache.ibatis.ognl.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1129=org.apache.ibatis.ognl.ASTSelectFirst, var3520=r1, var3608=$r0, var78=$r4, var3284=org.apache.ibatis.ognl.Node, var241=org.apache.ibatis.ognl.SimpleNode, var2043=$r2, var1413=$r3, var3552=java.lang.Object, var796=$r5, var862=$r6, var782=$r7}
; {org.apache.ibatis.ognl.ASTSelectFirst=var1129, r1=var3520, $r0=var3608, $r4=var78, org.apache.ibatis.ognl.Node=var3284, org.apache.ibatis.ognl.SimpleNode=var241, $r2=var2043, $r3=var1413, java.lang.Object=var3552, $r5=var796, $r6=var862, $r7=var782}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTSelectFirst;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{^ ");	$r2 = r1.<org.apache.ibatis.ognl.ASTSelectFirst: org.apache.ibatis.ognl.Node[] children>;	$r3 = $r2[0];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1