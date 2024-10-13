(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var864 0)
(declare-sort var3880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var864_values/799649555 () (Array Int var864))
(declare-fun getLength-Arr-var864-1 ((Array Int var864)) Int)
(declare-fun var3880-init () var3880)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3880 String) void)
(declare-const null-Int Int)
(declare-const var2409 Int) ; Statement: c1 := @parameter0: char 
(assert (not (= var2409 null-Int)))
(define-const var3402 (Array Int var864) var864_values/799649555) ; Statement: r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.PublicSuffixType: com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.PublicSuffixType[] values()>() 
(define-const var3299 Int (getLength-Arr-var864-1 var3402)) ; Statement: i0 = lengthof r0 
(define-const var2284 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r8 = new java.lang.IllegalArgumentException 
(assert (>= var2284 var3299)) ; Cond: i4 >= i0 
(define-const var2000 var3880 var3880-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var3126 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3126)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3126!1 String)
(assert (= var3126!1 ""))
(assert true)
(define-const var889 String (append/672562846 var3126!1 "No enum corresponding to given code: ")) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No enum corresponding to given code: ") 
(declare-const var3126!2 String)
(assert (= var3126!2 (str.++ var3126!1 "No enum corresponding to given code: ")))
(assert true)
(define-const var1114 String (append/-1166366385 var889 var2409)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c1) 
(declare-const var889!1 String)
(assert (str.prefixof var889 var889!1))
(assert true)
(define-const var3002 String (toString/-2075883882 var1114)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2000 var3002)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2000!1 var3880)
(declare-const var3002!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var864_values/799649555=([], com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.PublicSuffixType[]), getLength-Arr-var864-1=([com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.PublicSuffixType[]], int), var3880-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2409=c1, var864=com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.PublicSuffixType, var3402=r0, var3299=i0, var2284=i4, var3880=java.lang.IllegalArgumentException, var2000=$r8, var3126=$r7, var889=$r3, var1114=$r4, var3002=$r5}
; {c1=var2409, com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.PublicSuffixType=var864, r0=var3402, i0=var3299, i4=var2284, java.lang.IllegalArgumentException=var3880, $r8=var2000, $r7=var3126, $r3=var889, $r4=var1114, $r5=var3002}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts c1 := @parameter0: char;	r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.PublicSuffixType: com.google.javascript.jscomp.jarjar.com.google.thirdparty.publicsuffix.PublicSuffixType[] values()>();	i0 = lengthof r0;	i4 = 0;	if i4 >= i0 goto $r8 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No enum corresponding to given code: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r8
;block_num 3