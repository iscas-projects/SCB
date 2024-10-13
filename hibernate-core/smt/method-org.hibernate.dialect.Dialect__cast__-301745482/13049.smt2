(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1392 0)
(declare-sort var1946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1392 var1392)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3539 var1392) ; Statement: r4 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var3539 null-var1392)))
(declare-const var1878 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1878 null-String)))
(declare-const var1514 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1514 null-Int)))
(declare-const var1055 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1055 null-Int)))
(declare-const var737 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var737 null-Int)))
(declare-const var3817 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var3817 null-Int)))
 ; Statement: if i0 != 1 goto $r0 = new java.lang.StringBuilder 
(assert (not (not (= var1514 1)))) ; Negate: Cond: i0 != 1  
(define-const var3064 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3064)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3064!1 String)
(assert (= var3064!1 ""))
(assert true)
(define-const var2317 String (append/672562846 var3064!1 "cast(")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast(") 
(declare-const var3064!2 String)
(assert (= var3064!2 (str.++ var3064!1 "cast(")))
(assert true)
(define-const var1729 String (append/672562846 var2317 var1878)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2317!1 String)
(assert (= var2317!1 (str.++ var2317 var1878)))
(assert true)
(define-const var175 String (append/672562846 var1729 " as char(")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as char(") 
(declare-const var1729!1 String)
(assert (= var1729!1 (str.++ var1729 " as char(")))
(assert true)
(define-const var2620 String (append/-1001720160 var175 var1055)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var175!1 String)
(assert (str.prefixof var175 var175!1))
(assert true)
(define-const var928 String (append/672562846 var2620 "))")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("))") 
(declare-const var2620!1 String)
(assert (= var2620!1 (str.++ var2620 "))")))
(assert true)
(define-const var3544 String (toString/-2075883882 var928)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1392=org.hibernate.dialect.Dialect, var3539=r4, var1878=r1, var1946=null_type, var1514=i0, var1055=i1, var737=i2, var3817=i3, var3064=$r10, var2317=$r11, var1729=$r12, var175=$r13, var2620=$r14, var928=$r15, var3544=$r16}
; {org.hibernate.dialect.Dialect=var1392, r4=var3539, r1=var1878, null_type=var1946, i0=var1514, i1=var1055, i2=var737, i3=var3817, $r10=var3064, $r11=var2317, $r12=var1729, $r13=var175, $r14=var2620, $r15=var928, $r16=var3544}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	if i0 != 1 goto $r0 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast(");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as char(");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("))");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2