(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var362 0)
(declare-sort var1543 0)
(declare-sort var1952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1543_checkFieldTypeSignature/-12186639 (String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1952-init () var1952)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1952 String) void)
(declare-const null-String String)
(declare-const var1971 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1971 null-String)))
(define-const var3325 Int (var1543_checkFieldTypeSignature/-12186639 var1971 0)) ; Statement: i0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkFieldTypeSignature(java.lang.String,int)>(r0, 0) 
(assert true)
(define-const var2202 Int (length/-134980193 var1971)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == $i1 goto return 
(assert (not (= var3325 var2202))) ; Negate: Cond: i0 == $i1  
(define-const var1382 var1952 var1952-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var250 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var250)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var250!1 String)
(assert (= var250!1 ""))
(assert true)
(define-const var1092 String (append/672562846 var250!1 var1971)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var250!2 String)
(assert (= var250!2 (str.++ var250!1 var1971)))
(assert true)
(define-const var2204 String (append/672562846 var1092 ": error at index ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": error at index ") 
(declare-const var1092!1 String)
(assert (= var1092!1 (str.++ var1092 ": error at index ")))
(assert true)
(define-const var285 String (append/-1001720160 var2204 var3325)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2204!1 String)
(assert (str.prefixof var2204 var2204!1))
(assert true)
(define-const var958 String (toString/-2075883882 var285)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1382 var958)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var1382!1 var1952)
(declare-const var958!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1543_checkFieldTypeSignature/-12186639=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), var1952-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1971=r0, var362=null_type, var1543=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var3325=i0, var2202=$i1, var1952=java.lang.IllegalArgumentException, var1382=$r1, var250=$r2, var1092=$r3, var2204=$r4, var285=$r5, var958=$r6}
; {r0=var1971, null_type=var362, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var1543, i0=var3325, $i1=var2202, java.lang.IllegalArgumentException=var1952, $r1=var1382, $r2=var250, $r3=var1092, $r4=var2204, $r5=var285, $r6=var958}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkFieldTypeSignature(java.lang.String,int)>(r0, 0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == $i1 goto return;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": error at index ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 2