(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var803 0)
(declare-sort var1143 0)
(declare-sort var2784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun Int_toString/1350422511 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2784 String) void)
(declare-fun cast-from-var803-to-var2784 (var803) var2784)
(declare-fun line/-2061711696 (var803) Int)
(declare-fun column/-2061711696 (var803) Int)
(declare-const null-var803 var803)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1522 var803) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException 
(assert (not (= var1522 null-var803)))
(declare-const var2157 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2157 null-Int)))
(declare-const var1622 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1622 null-Int)))
(declare-const var2850 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2850 null-String)))
(define-const var1212 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1212)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1212!1 String)
(assert (= var1212!1 ""))
(define-const var3552 String (Int_toString/1350422511 var2157)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var744 String (append/672562846 var1212!1 var3552)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1212!2 String)
(assert (= var1212!2 (str.++ var1212!1 var3552)))
(assert true)
(define-const var1220 String (append/672562846 var744 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var744!1 String)
(assert (= var744!1 (str.++ var744 ":")))
(assert true)
(define-const var937 String (append/-1001720160 var1220 var1622)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1220!1 String)
(assert (str.prefixof var1220 var1220!1))
(assert true)
(define-const var1007 String (append/672562846 var937 ": ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var937!1 String)
(assert (= var937!1 (str.++ var937 ": ")))
(assert true)
(define-const var376 String (append/672562846 var1007 var2850)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1007!1 String)
(assert (= var1007!1 (str.++ var1007 var2850)))
(assert true)
(define-const var942 String (toString/-2075883882 var376)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 (cast-from-var803-to-var2784 var1522) var942)) ; Statement: specialinvoke r0.<java.io.IOException: void <init>(java.lang.String)>($r9) 

(declare-const var1522!1 var803)
(declare-const var942!1 String)
(declare-const var1522!2 var803)
(assert (not (= var1522!2 null-var803)))
(assert (= (line/-2061711696 var1522!2) var2157)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException: int line> = i0 
(declare-const var1522!3 var803)
(assert (not (= var1522!3 null-var803)))
(assert (= (column/-2061711696 var1522!3) var1622)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException: int column> = i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), Int_toString/1350422511=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void), cast-from-var803-to-var2784=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException], java.io.IOException), line/-2061711696=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException], int), column/-2061711696=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException], int)}
; {var803=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException, var1522=r0, var2157=i0, var1622=i1, var2850=r6, var1143=null_type, var1212=$r1, var3552=$r2, var744=$r3, var1220=$r4, var937=$r5, var1007=$r7, var376=$r8, var942=$r9, var2784=java.io.IOException}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException=var803, r0=var1522, i0=var2157, i1=var1622, r6=var2850, null_type=var1143, $r1=var1212, $r2=var3552, $r3=var744, $r4=var1220, $r5=var937, $r7=var1007, $r8=var376, $r9=var942, java.io.IOException=var2784}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException;	i0 := @parameter0: int;	i1 := @parameter1: int;	r6 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.io.IOException: void <init>(java.lang.String)>($r9);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException: int line> = i0;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException: int column> = i1;	return
;block_num 1