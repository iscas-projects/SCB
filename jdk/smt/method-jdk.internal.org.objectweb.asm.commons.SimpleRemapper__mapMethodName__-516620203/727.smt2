(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2789 0)
(declare-sort var1192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun map/-1518970463 (var2789 String) String)
(declare-const null-var2789 var2789)
(declare-const null-String String)
(declare-const var46 var2789) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.commons.SimpleRemapper 
(assert (not (= var46 null-var2789)))
(declare-const var437 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var437 null-String)))
(declare-const var2207 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2207 null-String)))
(declare-const var2509 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2509 null-String)))
(define-const var71 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var71)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var71!1 String)
(assert (= var71!1 ""))
(assert true)
(define-const var3888 String (append/672562846 var71!1 var437)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var71!2 String)
(assert (= var71!2 (str.++ var71!1 var437)))
(assert true)
(define-const var3737 String (append/-1166366385 var3888 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3888!1 String)
(assert (str.prefixof var3888 var3888!1))
(assert true)
(define-const var2346 String (append/672562846 var3737 var2207)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3737!1 String)
(assert (= var3737!1 (str.++ var3737 var2207)))
(assert true)
(define-const var3776 String (append/672562846 var2346 var2509)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2346!1 String)
(assert (= var2346!1 (str.++ var2346 var2509)))
(assert true)
(define-const var2576 String (toString/-2075883882 var3776)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1739 String (map/-1518970463 var46 var2576)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.commons.SimpleRemapper: java.lang.String map(java.lang.String)>($r9) 
 ; Statement: if r10 != null goto $r11 = r10 
(assert (not (not (= var1739 null-String)))) ; Negate: Cond: r10 != null  
(define-const var304 String var2207) ; Statement: $r11 = r4 
 ; Statement: goto [?= return $r11] 
(assert true) ; Non Conditional
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), map/-1518970463=([jdk.internal.org.objectweb.asm.commons.SimpleRemapper, java.lang.String], java.lang.String)}
; {var2789=jdk.internal.org.objectweb.asm.commons.SimpleRemapper, var46=r0, var437=r2, var1192=null_type, var2207=r4, var2509=r6, var71=$r1, var3888=$r3, var3737=$r5, var2346=$r7, var3776=$r8, var2576=$r9, var1739=r10, var304=$r11}
; {jdk.internal.org.objectweb.asm.commons.SimpleRemapper=var2789, r0=var46, r2=var437, null_type=var1192, r4=var2207, r6=var2509, $r1=var71, $r3=var3888, $r5=var3737, $r7=var2346, $r8=var3776, $r9=var2576, r10=var1739, $r11=var304}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.commons.SimpleRemapper;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.commons.SimpleRemapper: java.lang.String map(java.lang.String)>($r9);	if r10 != null goto $r11 = r10;	$r11 = r4;	goto [?= return $r11];	return $r11
;block_num 3