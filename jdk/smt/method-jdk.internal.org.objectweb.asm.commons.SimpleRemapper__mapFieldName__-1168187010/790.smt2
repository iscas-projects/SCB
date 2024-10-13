(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1576 0)
(declare-sort var3783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun map/-1518970463 (var1576 String) String)
(declare-const null-var1576 var1576)
(declare-const null-String String)
(declare-const var1336 var1576) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.commons.SimpleRemapper 
(assert (not (= var1336 null-var1576)))
(declare-const var1098 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1098 null-String)))
(declare-const var2651 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2651 null-String)))
(declare-const var13 String) ; Statement: r9 := @parameter2: java.lang.String 
(assert (not (= var13 null-String)))
(define-const var3743 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3743)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3743!1 String)
(assert (= var3743!1 ""))
(assert true)
(define-const var2590 String (append/672562846 var3743!1 var1098)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3743!2 String)
(assert (= var3743!2 (str.++ var3743!1 var1098)))
(assert true)
(define-const var2618 String (append/-1166366385 var2590 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2590!1 String)
(assert (str.prefixof var2590 var2590!1))
(assert true)
(define-const var16 String (append/672562846 var2618 var2651)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2618!1 String)
(assert (= var2618!1 (str.++ var2618 var2651)))
(assert true)
(define-const var178 String (toString/-2075883882 var16)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var505 String (map/-1518970463 var1336 var178)) ; Statement: r8 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.commons.SimpleRemapper: java.lang.String map(java.lang.String)>($r7) 
 ; Statement: if r8 != null goto $r10 = r8 
(assert (not (= var505 null-String))) ; Cond: r8 != null 
(define-const var1808 String var505) ; Statement: $r10 = r8 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), map/-1518970463=([jdk.internal.org.objectweb.asm.commons.SimpleRemapper, java.lang.String], java.lang.String)}
; {var1576=jdk.internal.org.objectweb.asm.commons.SimpleRemapper, var1336=r0, var1098=r2, var3783=null_type, var2651=r4, var13=r9, var3743=$r1, var2590=$r3, var2618=$r5, var16=$r6, var178=$r7, var505=r8, var1808=$r10}
; {jdk.internal.org.objectweb.asm.commons.SimpleRemapper=var1576, r0=var1336, r2=var1098, null_type=var3783, r4=var2651, r9=var13, $r1=var3743, $r3=var2590, $r5=var2618, $r6=var16, $r7=var178, r8=var505, $r10=var1808}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.commons.SimpleRemapper;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r9 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r8 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.commons.SimpleRemapper: java.lang.String map(java.lang.String)>($r7);	if r8 != null goto $r10 = r8;	$r10 = r8;	return $r10
;block_num 3