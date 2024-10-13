(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3887 0)
(declare-sort var881 0)
(declare-sort var3147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun jjtGetNumChildren/-748122913 (var881) Int)
(declare-fun cast-from-var3887-to-var881 (var3887) var881)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3147) String)
(declare-fun cast-from-String-to-var3147 (String) var3147)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3887 var3887)
(declare-const var114 var3887) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTList 
(assert (not (= var114 null-var3887)))
(define-const var34 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var34 "{ ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{ ") 
(declare-const var34!1 String)
(assert (= var34!1 "{ "))
(define-const var110 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var423 Int (jjtGetNumChildren/-748122913 (cast-from-var3887-to-var881 var114))) ; Statement: $i0 = virtualinvoke r1.<org.apache.ibatis.ognl.ASTList: int jjtGetNumChildren()>() 
 ; Statement: if i1 >= $i0 goto $r2 = new java.lang.StringBuilder 
(assert (>= var110 var423)) ; Cond: i1 >= $i0 
(define-const var724 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var724)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var724!1 String)
(assert (= var724!1 ""))
(assert true)
(define-const var2939 String (append/-1031950772 var724!1 (cast-from-String-to-var3147 var34!1))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var724!2 String)
(assert (str.prefixof var724!1 var724!2))
(assert true)
(define-const var2051 String (append/672562846 var2939 " }")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }") 
(declare-const var2939!1 String)
(assert (= var2939!1 (str.++ var2939 " }")))
(assert true)
(define-const var3173 String (toString/-2075883882 var2051)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), jjtGetNumChildren/-748122913=([org.apache.ibatis.ognl.SimpleNode], int), cast-from-var3887-to-var881=([org.apache.ibatis.ognl.ASTList], org.apache.ibatis.ognl.SimpleNode), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var3147=([java.lang.StringBuilder], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3887=org.apache.ibatis.ognl.ASTList, var114=r1, var34=$r0, var110=i1, var881=org.apache.ibatis.ognl.SimpleNode, var423=$i0, var724=$r2, var3147=java.lang.Object, var2939=$r3, var2051=$r4, var3173=$r5}
; {org.apache.ibatis.ognl.ASTList=var3887, r1=var114, $r0=var34, i1=var110, org.apache.ibatis.ognl.SimpleNode=var881, $i0=var423, $r2=var724, java.lang.Object=var3147, $r3=var2939, $r4=var2051, $r5=var3173}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{ ");	i1 = 0;	$i0 = virtualinvoke r1.<org.apache.ibatis.ognl.ASTList: int jjtGetNumChildren()>();	if i1 >= $i0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3