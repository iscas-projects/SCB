(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var981 0)
(declare-sort var2837 0)
(declare-sort var2405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1177731024 (var2837) void)
(declare-fun cast-from-var981-to-var2837 (var981) var2837)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var2405-init () var2405)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1057600344 (var2405 String) void)
(declare-const null-var981 var981)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2397 var981) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input 
(assert (not (= var2397 null-var981)))
(declare-const var1582 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var1582 null-__Array__Int__Int__)))
(declare-const var2205 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2205 null-Int)))
(declare-const var2977 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2977 null-Int)))
(assert true)
;(assert (<init>/1177731024 (cast-from-var981-to-var2837 var2397))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput: void <init>()>() 

(declare-const var2397!1 var981)
(define-const var3733 Int (getLength-Arr-Int-1 var1582)) ; Statement: $i1 = lengthof r1 
 ; Statement: if i0 <= $i1 goto r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input: byte[] b> = r1 
(assert (not (<= var2977 var3733))) ; Negate: Cond: i0 <= $i1  
(define-const var401 var2405 var2405-init) ; Statement: $r2 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var2502 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2502)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2502!1 String)
(assert (= var2502!1 ""))
(assert true)
(define-const var1117 String (append/672562846 var2502!1 "end is greater than length: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("end is greater than length: ") 
(declare-const var2502!2 String)
(assert (= var2502!2 (str.++ var2502!1 "end is greater than length: ")))
(assert true)
(define-const var3070 String (append/-1001720160 var1117 var2977)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1117!1 String)
(assert (str.prefixof var1117 var1117!1))
(assert true)
(define-const var3296 String (append/672562846 var3070 " > ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" > ") 
(declare-const var3070!1 String)
(assert (= var3070!1 (str.++ var3070 " > ")))
(define-const var1997 Int (getLength-Arr-Int-1 var1582)) ; Statement: $i3 = lengthof r1 
(assert true)
(define-const var3223 String (append/-1001720160 var3296 var1997)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var3296!1 String)
(assert (str.prefixof var3296 var3296!1))
(assert true)
(define-const var3306 String (toString/-2075883882 var3223)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1057600344 var401 var3306)) ; Statement: specialinvoke $r2.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r8) 

(declare-const var401!1 var2405)
(declare-const var3306!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1177731024=([com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput], void), cast-from-var981-to-var2837=([com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input], com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput), getLength-Arr-Int-1=([byte[]], int), var2405-init=([], java.lang.ArrayIndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var981=com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input, var2397=r0, var1582=r1, var2205=i2, var2977=i0, var2837=com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput, var3733=$i1, var2405=java.lang.ArrayIndexOutOfBoundsException, var401=$r2, var2502=$r3, var1117=$r4, var3070=$r5, var3296=$r6, var1997=$i3, var3223=$r7, var3306=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input=var981, r0=var2397, r1=var1582, i2=var2205, i0=var2977, com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput=var2837, $i1=var3733, java.lang.ArrayIndexOutOfBoundsException=var2405, $r2=var401, $r3=var2502, $r4=var1117, $r5=var3070, $r6=var3296, $i3=var1997, $r7=var3223, $r8=var3306}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input;	r1 := @parameter0: byte[];	i2 := @parameter1: int;	i0 := @parameter2: int;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput: void <init>()>();	$i1 = lengthof r1;	if i0 <= $i1 goto r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input: byte[] b> = r1;	$r2 = new java.lang.ArrayIndexOutOfBoundsException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("end is greater than length: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" > ");	$i3 = lengthof r1;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2