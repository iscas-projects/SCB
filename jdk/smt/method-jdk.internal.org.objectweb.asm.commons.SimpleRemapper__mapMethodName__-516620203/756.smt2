(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1435 0)
(declare-sort var1912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun map/-1518970463 (var1435 String) String)
(declare-const null-var1435 var1435)
(declare-const null-String String)
(declare-const var2340 var1435) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.commons.SimpleRemapper 
(assert (not (= var2340 null-var1435)))
(declare-const var3592 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3592 null-String)))
(declare-const var968 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var968 null-String)))
(declare-const var940 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var940 null-String)))
(define-const var246 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var246)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var246!1 String)
(assert (= var246!1 ""))
(assert true)
(define-const var262 String (append/672562846 var246!1 var3592)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var246!2 String)
(assert (= var246!2 (str.++ var246!1 var3592)))
(assert true)
(define-const var693 String (append/-1166366385 var262 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var262!1 String)
(assert (str.prefixof var262 var262!1))
(assert true)
(define-const var3116 String (append/672562846 var693 var968)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var693!1 String)
(assert (= var693!1 (str.++ var693 var968)))
(assert true)
(define-const var3909 String (append/672562846 var3116 var940)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3116!1 String)
(assert (= var3116!1 (str.++ var3116 var940)))
(assert true)
(define-const var1641 String (toString/-2075883882 var3909)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var223 String (map/-1518970463 var2340 var1641)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.commons.SimpleRemapper: java.lang.String map(java.lang.String)>($r9) 
 ; Statement: if r10 != null goto $r11 = r10 
(assert (not (= var223 null-String))) ; Cond: r10 != null 
(define-const var899 String var223) ; Statement: $r11 = r10 
(assert true) ; Non Conditional
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), map/-1518970463=([jdk.internal.org.objectweb.asm.commons.SimpleRemapper, java.lang.String], java.lang.String)}
; {var1435=jdk.internal.org.objectweb.asm.commons.SimpleRemapper, var2340=r0, var3592=r2, var1912=null_type, var968=r4, var940=r6, var246=$r1, var262=$r3, var693=$r5, var3116=$r7, var3909=$r8, var1641=$r9, var223=r10, var899=$r11}
; {jdk.internal.org.objectweb.asm.commons.SimpleRemapper=var1435, r0=var2340, r2=var3592, null_type=var1912, r4=var968, r6=var940, $r1=var246, $r3=var262, $r5=var693, $r7=var3116, $r8=var3909, $r9=var1641, r10=var223, $r11=var899}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.commons.SimpleRemapper;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.commons.SimpleRemapper: java.lang.String map(java.lang.String)>($r9);	if r10 != null goto $r11 = r10;	$r11 = r10;	return $r11
;block_num 3