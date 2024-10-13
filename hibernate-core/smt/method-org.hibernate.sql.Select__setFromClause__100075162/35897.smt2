(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var813 0)
(declare-sort var1166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fromClause/-766285534 (var813) String)
(declare-fun guesstimatedBufferSize/-766285534 (var813) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var813 var813)
(declare-const null-String String)
(declare-const var399 var813) ; Statement: r0 := @this: org.hibernate.sql.Select 
(assert (not (= var399 null-var813)))
(declare-const var1920 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1920 null-String)))
(declare-const var1688 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1688 null-String)))
(define-const var2807 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2807)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2807!1 String)
(assert (= var2807!1 ""))
(assert true)
(define-const var1739 String (append/672562846 var2807!1 var1920)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2807!2 String)
(assert (= var2807!2 (str.++ var2807!1 var1920)))
(assert true)
(define-const var689 String (append/-1166366385 var1739 32)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1739!1 String)
(assert (str.prefixof var1739 var1739!1))
(assert true)
(define-const var3798 String (append/672562846 var689 var1688)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var689!1 String)
(assert (= var689!1 (str.++ var689 var1688)))
(assert true)
(define-const var569 String (toString/-2075883882 var3798)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var399!1 var813)
(assert (not (= var399!1 null-var813)))
(assert (= (fromClause/-766285534 var399!1) var569)) ; Statement: r0.<org.hibernate.sql.Select: java.lang.String fromClause> = $r7 
(define-const var317 Int (guesstimatedBufferSize/-766285534 var399!1)) ; Statement: $i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> 
(define-const var61 String (fromClause/-766285534 var399!1)) ; Statement: $r8 = r0.<org.hibernate.sql.Select: java.lang.String fromClause> 
(assert true)
(define-const var2899 Int (length/-134980193 var61)) ; Statement: $i1 = virtualinvoke $r8.<java.lang.String: int length()>() 
(define-const var2243 Int (+ var317 var2899)) ; Statement: $i2 = $i0 + $i1 
(declare-const var399!2 var813)
(assert (not (= var399!2 null-var813)))
(assert (= (guesstimatedBufferSize/-766285534 var399!2) var2243)) ; Statement: r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fromClause/-766285534=([org.hibernate.sql.Select], java.lang.String), guesstimatedBufferSize/-766285534=([org.hibernate.sql.Select], int), length/-134980193=([java.lang.String], int)}
; {var813=org.hibernate.sql.Select, var399=r0, var1920=r2, var1166=null_type, var1688=r4, var2807=$r1, var1739=$r3, var689=$r5, var3798=$r6, var569=$r7, var317=$i0, var61=$r8, var2899=$i1, var2243=$i2}
; {org.hibernate.sql.Select=var813, r0=var399, r2=var1920, null_type=var1166, r4=var1688, $r1=var2807, $r3=var1739, $r5=var689, $r6=var3798, $r7=var569, $i0=var317, $r8=var61, $i1=var2899, $i2=var2243}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.sql.Select;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.sql.Select: java.lang.String fromClause> = $r7;	$i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize>;	$r8 = r0.<org.hibernate.sql.Select: java.lang.String fromClause>;	$i1 = virtualinvoke $r8.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2;	return r0
;block_num 1