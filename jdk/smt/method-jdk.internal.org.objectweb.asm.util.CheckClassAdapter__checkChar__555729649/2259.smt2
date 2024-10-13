(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3742 0)
(declare-sort var3958 0)
(declare-sort var1209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3958_getChar/635386524 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1209-init () var1209)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1209 String) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var766 Int) ; Statement: c1 := @parameter0: char 
(assert (not (= var766 null-Int)))
(declare-const var1833 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1833 null-String)))
(declare-const var2246 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2246 null-Int)))
(define-const var2099 Int (var3958_getChar/635386524 var1833 var2246)) ; Statement: $c2 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i0) 
(define-const var3296 Int (cast-from-Int-to-Int var2099)) ; Statement: $i4 = (int) $c2 
(define-const var1505 Int (cast-from-Int-to-Int var766)) ; Statement: $i5 = (int) c1 
 ; Statement: if $i4 != $i5 goto $r10 = new java.lang.IllegalArgumentException 
(assert (not (= var3296 var1505))) ; Cond: $i4 != $i5 
(define-const var805 var1209 var1209-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var3707 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3707)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3707!1 String)
(assert (= var3707!1 ""))
(assert true)
(define-const var2981 String (append/672562846 var3707!1 var1833)) ; Statement: $r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3707!2 String)
(assert (= var3707!2 (str.++ var3707!1 var1833)))
(assert true)
(define-const var3719 String (append/672562846 var2981 ": \u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": \'") 
(declare-const var2981!1 String)
(assert (= var2981!1 (str.++ var2981 ": \u0027")))
(assert true)
(define-const var1544 String (append/-1166366385 var3719 var766)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c1) 
(declare-const var3719!1 String)
(assert (str.prefixof var3719 var3719!1))
(assert true)
(define-const var1605 String (append/672562846 var1544 "\u0027 expected at index ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' expected at index ") 
(declare-const var1544!1 String)
(assert (= var1544!1 (str.++ var1544 "\u0027 expected at index ")))
(assert true)
(define-const var1223 String (append/-1001720160 var1605 var2246)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1605!1 String)
(assert (str.prefixof var1605 var1605!1))
(assert true)
(define-const var322 String (toString/-2075883882 var1223)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var805 var322)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var805!1 var1209)
(declare-const var322!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3958_getChar/635386524=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1209-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var766=c1, var1833=r0, var3742=null_type, var2246=i0, var3958=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var2099=$c2, var3296=$i4, var1505=$i5, var1209=java.lang.IllegalArgumentException, var805=$r10, var3707=$r9, var2981=$r3, var3719=$r4, var1544=$r5, var1605=$r6, var1223=$r7, var322=$r8}
; {c1=var766, r0=var1833, null_type=var3742, i0=var2246, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var3958, $c2=var2099, $i4=var3296, $i5=var1505, java.lang.IllegalArgumentException=var1209, $r10=var805, $r9=var3707, $r3=var2981, $r4=var3719, $r5=var1544, $r6=var1605, $r7=var1223, $r8=var322}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts c1 := @parameter0: char;	r0 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$c2 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i0);	$i4 = (int) $c2;	$i5 = (int) c1;	if $i4 != $i5 goto $r10 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": \'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' expected at index ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r10
;block_num 2