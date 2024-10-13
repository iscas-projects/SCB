(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3312 0)
(declare-sort var2241 0)
(declare-sort var2280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2280-init () var2280)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ofn/607062292 (var3312) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1208695669 (var2280 String) void)
(declare-const null-var3312 var3312)
(declare-const null-var2241 var2241)
(declare-const var1248 var3312) ; Statement: r2 := @this: org.javacc.jjtree.IO 
(assert (not (= var1248 null-var3312)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2317 var2241) ; Statement: $r9 := @caughtexception 
(assert (not (= var2317 null-var2241)))
(define-const var1071 var2280 var2280-init) ; Statement: $r10 = new org.javacc.jjtree.JJTreeIOException 
(define-const var2904 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2904)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2904!1 String)
(assert (= var2904!1 ""))
(assert true)
(define-const var1702 String (append/672562846 var2904!1 "Can\u0027t create output file ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t create output file ") 
(declare-const var2904!2 String)
(assert (= var2904!2 (str.++ var2904!1 "Can\u0027t create output file ")))
(define-const var3453 String (ofn/607062292 var1248)) ; Statement: $r12 = r2.<org.javacc.jjtree.IO: java.lang.String ofn> 
(assert true)
(define-const var140 String (append/672562846 var1702 var3453)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1702!1 String)
(assert (= var1702!1 (str.++ var1702 var3453)))
(assert true)
(define-const var330 String (toString/-2075883882 var140)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1208695669 var1071 var330)) ; Statement: specialinvoke $r10.<org.javacc.jjtree.JJTreeIOException: void <init>(java.lang.String)>($r15) 

(declare-const var1071!1 var2280)
(declare-const var330!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2280-init=([], org.javacc.jjtree.JJTreeIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ofn/607062292=([org.javacc.jjtree.IO], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1208695669=([org.javacc.jjtree.JJTreeIOException, java.lang.String], void)}
; {var3312=org.javacc.jjtree.IO, var1248=r2, var2241=java.io.IOException, var2317=$r9, var2280=org.javacc.jjtree.JJTreeIOException, var1071=$r10, var2904=$r11, var1702=$r13, var3453=$r12, var140=$r14, var330=$r15}
; {org.javacc.jjtree.IO=var3312, r2=var1248, java.io.IOException=var2241, $r9=var2317, org.javacc.jjtree.JJTreeIOException=var2280, $r10=var1071, $r11=var2904, $r13=var1702, $r12=var3453, $r14=var140, $r15=var330}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.javacc.jjtree.IO;	$r9 := @caughtexception;	$r10 = new org.javacc.jjtree.JJTreeIOException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t create output file ");	$r12 = r2.<org.javacc.jjtree.IO: java.lang.String ofn>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.javacc.jjtree.JJTreeIOException: void <init>(java.lang.String)>($r15);	throw $r10
;block_num 2