(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3248 0)
(declare-sort var3539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3539_iterator/-693406491 (var3539) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var3539 var3539)
(declare-const var3772 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3772 null-String)))
(declare-const var1830 var3539) ; Statement: r4 := @parameter1: java.lang.Iterable 
(assert (not (= var1830 null-var3539)))
(define-const var3622 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3622 "Predicates.")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Predicates.") 
(declare-const var3622!1 String)
(assert (= var3622!1 "Predicates."))
(assert true)
(define-const var835 String (append/672562846 var3622!1 var3772)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3622!2 String)
(assert (= var3622!2 (str.++ var3622!1 var3772)))
(assert true)
(define-const var3719 String (append/-1166366385 var835 40)) ; Statement: r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var835!1 String)
(assert (str.prefixof var835 var835!1))
(define-const var1740 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var134 Iterator (var3539_iterator/-693406491 var1830)) ; Statement: r5 = interfaceinvoke r4.<java.lang.Iterable: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1538 Bool (Iterator_hasNext/-1669924200 var134)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r6 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var1538 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var672 String (append/-1166366385 var3719 41)) ; Statement: $r6 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3719!1 String)
(assert (str.prefixof var3719 var3719!1))
(assert true)
(define-const var1342 String (toString/-2075883882 var672)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3539_iterator/-693406491=([java.lang.Iterable], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3772=r1, var3248=null_type, var3539=java.lang.Iterable, var1830=r4, var3622=$r0, var835=$r2, var3719=r3, var1740=z1, var134=r5, var1538=$z0, var672=$r6, var1342=$r7}
; {r1=var3772, null_type=var3248, java.lang.Iterable=var3539, r4=var1830, $r0=var3622, $r2=var835, r3=var3719, z1=var1740, r5=var134, $z0=var1538, $r6=var672, $r7=var1342}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Iterable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Predicates.");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	z1 = 1;	r5 = interfaceinvoke r4.<java.lang.Iterable: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r6 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3