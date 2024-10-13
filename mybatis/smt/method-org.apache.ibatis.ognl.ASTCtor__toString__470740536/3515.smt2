(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3030 0)
(declare-sort var3551 0)
(declare-sort var1191 0)
(declare-sort var489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun className/-784408160 (var3030) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun isArray/-784408160 (var3030) Bool)
(declare-fun children/1926309034 (var1191) (Array Int var3551))
(declare-fun cast-from-var3030-to-var1191 (var3030) var1191)
(declare-fun append/-1031950772 (String var489) String)
(declare-fun cast-from-var3551-to-var489 (var3551) var489)
(declare-const null-var3030 var3030)
(declare-const var2580 var3030) ; Statement: r2 := @this: org.apache.ibatis.ognl.ASTCtor 
(assert (not (= var2580 null-var3030)))
(define-const var3173 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var854 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var854)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var854!1 String)
(assert (= var854!1 ""))
(assert true)
(define-const var2347 String (append/672562846 var854!1 "new ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new ") 
(declare-const var854!2 String)
(assert (= var854!2 (str.++ var854!1 "new ")))
(define-const var1195 String (className/-784408160 var2580)) ; Statement: $r3 = r2.<org.apache.ibatis.ognl.ASTCtor: java.lang.String className> 
(assert true)
(define-const var149 String (append/672562846 var2347 var1195)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2347!1 String)
(assert (= var2347!1 (str.++ var2347 var1195)))
(assert true)
(define-const var995 String (toString/-2075883882 var149)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var3173 var995)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6) 
(declare-const var3173!1 String)
(assert (= var3173!1 var995))
(define-const var3388 Bool (isArray/-784408160 var2580)) ; Statement: $z0 = r2.<org.apache.ibatis.ognl.ASTCtor: boolean isArray> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(assert (not (= (ite var3388 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3478 (Array Int var3551) (children/1926309034 (cast-from-var3030-to-var1191 var2580))) ; Statement: $r12 = r2.<org.apache.ibatis.ognl.ASTCtor: org.apache.ibatis.ognl.Node[] children> 
(define-const var2650 var3551 (select var3478 0)) ; Statement: $r13 = $r12[0] 
(define-const var3257 Bool true) ; Statement: $z1 = $r13 instanceof org.apache.ibatis.ognl.ASTConst 
 ; Statement: if $z1 == 0 goto $r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[] ") 
(assert (= (ite var3257 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2908 String (append/672562846 var3173!1 "[] ")) ; Statement: $r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[] ") 
(declare-const var3173!2 String)
(assert (= var3173!2 (str.++ var3173!1 "[] ")))
(define-const var164 (Array Int var3551) (children/1926309034 (cast-from-var3030-to-var1191 var2580))) ; Statement: $r14 = r2.<org.apache.ibatis.ognl.ASTCtor: org.apache.ibatis.ognl.Node[] children> 
(define-const var2509 var3551 (select var164 0)) ; Statement: $r15 = $r14[0] 
(assert true)
;(assert (append/-1031950772 var2908 (cast-from-var3551-to-var489 var2509))) ; Statement: virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var2908!1 String)
(assert (str.prefixof var2908 var2908!1))
 ; Statement: goto [?= $r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var747 String (toString/-2075883882 var3173!2)) ; Statement: $r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), className/-784408160=([org.apache.ibatis.ognl.ASTCtor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), isArray/-784408160=([org.apache.ibatis.ognl.ASTCtor], boolean), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var3030-to-var1191=([org.apache.ibatis.ognl.ASTCtor], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3551-to-var489=([org.apache.ibatis.ognl.Node], java.lang.Object)}
; {var3030=org.apache.ibatis.ognl.ASTCtor, var2580=r2, var3173=$r0, var854=$r1, var2347=$r4, var1195=$r3, var149=$r5, var995=$r6, var3388=$z0, var3551=org.apache.ibatis.ognl.Node, var1191=org.apache.ibatis.ognl.SimpleNode, var3478=$r12, var2650=$r13, var3257=$z1, var2908=$r16, var164=$r14, var2509=$r15, var489=java.lang.Object, var747=$r21}
; {org.apache.ibatis.ognl.ASTCtor=var3030, r2=var2580, $r0=var3173, $r1=var854, $r4=var2347, $r3=var1195, $r5=var149, $r6=var995, $z0=var3388, org.apache.ibatis.ognl.Node=var3551, org.apache.ibatis.ognl.SimpleNode=var1191, $r12=var3478, $r13=var2650, $z1=var3257, $r16=var2908, $r14=var164, $r15=var2509, java.lang.Object=var489, $r21=var747}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.ognl.ASTCtor;	$r0 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new ");	$r3 = r2.<org.apache.ibatis.ognl.ASTCtor: java.lang.String className>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6);	$z0 = r2.<org.apache.ibatis.ognl.ASTCtor: boolean isArray>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r12 = r2.<org.apache.ibatis.ognl.ASTCtor: org.apache.ibatis.ognl.Node[] children>;	$r13 = $r12[0];	$z1 = $r13 instanceof org.apache.ibatis.ognl.ASTConst;	if $z1 == 0 goto $r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[] ");	$r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[] ");	$r14 = r2.<org.apache.ibatis.ognl.ASTCtor: org.apache.ibatis.ognl.Node[] children>;	$r15 = $r14[0];	virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	goto [?= $r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r21
;block_num 4