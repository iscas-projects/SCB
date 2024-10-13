(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var988 0)
(declare-sort var3361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getEntityName/-1257717567 (var988) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var988 var988)
(declare-const null-String String)
(declare-const var2047 var988) ; Statement: r1 := @this: org.hibernate.cfg.ClassPropertyHolder 
(assert (not (= var2047 null-var988)))
(declare-const var3065 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3065 null-String)))
(define-const var592 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var592)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var592!1 String)
(assert (= var592!1 ""))
(assert true)
(define-const var3005 String (getEntityName/-1257717567 var2047)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.cfg.ClassPropertyHolder: java.lang.String getEntityName()>() 
(assert true)
(define-const var2169 String (append/672562846 var592!1 var3005)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var592!2 String)
(assert (= var592!2 (str.++ var592!1 var3005)))
(assert true)
(define-const var1769 String (append/-1166366385 var2169 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2169!1 String)
(assert (str.prefixof var2169 var2169!1))
(assert true)
(define-const var3293 String (append/672562846 var1769 var3065)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1769!1 String)
(assert (= var1769!1 (str.++ var1769 var3065)))
(assert true)
(define-const var2838 String (toString/-2075883882 var3293)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getEntityName/-1257717567=([org.hibernate.cfg.ClassPropertyHolder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var988=org.hibernate.cfg.ClassPropertyHolder, var2047=r1, var3065=r4, var3361=null_type, var592=$r0, var3005=$r2, var2169=$r3, var1769=$r5, var3293=$r6, var2838=$r7}
; {org.hibernate.cfg.ClassPropertyHolder=var988, r1=var2047, r4=var3065, null_type=var3361, $r0=var592, $r2=var3005, $r3=var2169, $r5=var1769, $r6=var3293, $r7=var2838}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.ClassPropertyHolder;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.cfg.ClassPropertyHolder: java.lang.String getEntityName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1