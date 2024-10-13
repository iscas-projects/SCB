(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var500 0)
(declare-sort var621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun map/-1518970463 (var500 String) String)
(declare-const null-var500 var500)
(declare-const null-String String)
(declare-const var3678 var500) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.commons.SimpleRemapper 
(assert (not (= var3678 null-var500)))
(declare-const var2115 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2115 null-String)))
(declare-const var468 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var468 null-String)))
(declare-const var1819 String) ; Statement: r9 := @parameter2: java.lang.String 
(assert (not (= var1819 null-String)))
(define-const var984 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var984)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var984!1 String)
(assert (= var984!1 ""))
(assert true)
(define-const var2032 String (append/672562846 var984!1 var2115)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var984!2 String)
(assert (= var984!2 (str.++ var984!1 var2115)))
(assert true)
(define-const var2225 String (append/-1166366385 var2032 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2032!1 String)
(assert (str.prefixof var2032 var2032!1))
(assert true)
(define-const var2005 String (append/672562846 var2225 var468)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2225!1 String)
(assert (= var2225!1 (str.++ var2225 var468)))
(assert true)
(define-const var1690 String (toString/-2075883882 var2005)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var21 String (map/-1518970463 var3678 var1690)) ; Statement: r8 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.commons.SimpleRemapper: java.lang.String map(java.lang.String)>($r7) 
 ; Statement: if r8 != null goto $r10 = r8 
(assert (not (not (= var21 null-String)))) ; Negate: Cond: r8 != null  
(define-const var1881 String var468) ; Statement: $r10 = r4 
 ; Statement: goto [?= return $r10] 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), map/-1518970463=([jdk.internal.org.objectweb.asm.commons.SimpleRemapper, java.lang.String], java.lang.String)}
; {var500=jdk.internal.org.objectweb.asm.commons.SimpleRemapper, var3678=r0, var2115=r2, var621=null_type, var468=r4, var1819=r9, var984=$r1, var2032=$r3, var2225=$r5, var2005=$r6, var1690=$r7, var21=r8, var1881=$r10}
; {jdk.internal.org.objectweb.asm.commons.SimpleRemapper=var500, r0=var3678, r2=var2115, null_type=var621, r4=var468, r9=var1819, $r1=var984, $r3=var2032, $r5=var2225, $r6=var2005, $r7=var1690, r8=var21, $r10=var1881}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.commons.SimpleRemapper;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r9 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r8 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.commons.SimpleRemapper: java.lang.String map(java.lang.String)>($r7);	if r8 != null goto $r10 = r8;	$r10 = r4;	goto [?= return $r10];	return $r10
;block_num 3