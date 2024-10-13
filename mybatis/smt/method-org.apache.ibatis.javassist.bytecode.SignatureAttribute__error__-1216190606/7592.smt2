(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1812 0)
(declare-sort var96 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var96-init () var96)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var96 String) void)
(declare-const null-String String)
(declare-const var1749 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1749 null-String)))
(define-const var3113 var96 var96-init) ; Statement: $r0 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var2901 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2901)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2901!1 String)
(assert (= var2901!1 ""))
(assert true)
(define-const var2034 String (append/672562846 var2901!1 "bad signature: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad signature: ") 
(declare-const var2901!2 String)
(assert (= var2901!2 (str.++ var2901!1 "bad signature: ")))
(assert true)
(define-const var1349 String (append/672562846 var2034 var1749)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2034!1 String)
(assert (= var2034!1 (str.++ var2034 var1749)))
(assert true)
(define-const var1929 String (toString/-2075883882 var1349)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var3113 var1929)) ; Statement: specialinvoke $r0.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r5) 

(declare-const var3113!1 var96)
(declare-const var1929!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var96-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var1749=r2, var1812=null_type, var96=org.apache.ibatis.javassist.bytecode.BadBytecode, var3113=$r0, var2901=$r1, var2034=$r3, var1349=$r4, var1929=$r5}
; {r2=var1749, null_type=var1812, org.apache.ibatis.javassist.bytecode.BadBytecode=var96, $r0=var3113, $r1=var2901, $r3=var2034, $r4=var1349, $r5=var1929}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r0 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad signature: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r5);	return $r0
;block_num 1