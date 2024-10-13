(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var53 0)
(declare-sort var1122 0)
(declare-sort var62 0)
(declare-sort var1937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/1286398241 (var53) Int)
(declare-fun var62-init () var62)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1937) String)
(declare-fun cast-from-var53-to-var1937 (var53) var1937)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var62 String) void)
(declare-const null-var53 var53)
(declare-const var1122-$SwitchMap$javax$persistence$FlushModeType (Array Int Int))
(declare-const var2232 var53) ; Statement: r0 := @parameter0: javax.persistence.FlushModeType 
(assert (not (= var2232 null-var53)))
(define-const var3307 (Array Int Int) var1122-$SwitchMap$javax$persistence$FlushModeType) ; Statement: $r1 = <org.hibernate.jpa.internal.util.ConfigurationHelper$1: int[] $SwitchMap$javax$persistence$FlushModeType> 
(assert true)
(define-const var3950 Int (ordinal/1286398241 var2232)) ; Statement: $i0 = virtualinvoke r0.<javax.persistence.FlushModeType: int ordinal()>() 
(define-const var1123 Int (select var3307 var3950)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r3 = <org.hibernate.FlushMode: org.hibernate.FlushMode AUTO>;     case 2: goto $r2 = <org.hibernate.FlushMode: org.hibernate.FlushMode COMMIT>;     default: goto $r4 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var1123 2)) (and (not (= var1123 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var3252 var62 var62-init) ; Statement: $r4 = new org.hibernate.AssertionFailure 
(define-const var1114 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1114)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1114!1 String)
(assert (= var1114!1 ""))
(assert true)
(define-const var2998 String (append/672562846 var1114!1 "Unknown FlushModeType: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown FlushModeType: ") 
(declare-const var1114!2 String)
(assert (= var1114!2 (str.++ var1114!1 "Unknown FlushModeType: ")))
(assert true)
(define-const var3668 String (append/-1031950772 var2998 (cast-from-var53-to-var1937 var2232))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2998!1 String)
(assert (str.prefixof var2998 var2998!1))
(assert true)
(define-const var1706 String (toString/-2075883882 var3668)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var3252 var1706)) ; Statement: specialinvoke $r4.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r8) 

(declare-const var3252!1 var62)
(declare-const var1706!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/1286398241=([javax.persistence.FlushModeType], int), var62-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var53-to-var1937=([javax.persistence.FlushModeType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var53=javax.persistence.FlushModeType, var2232=r0, var1122=org.hibernate.jpa.internal.util.ConfigurationHelper$1, var3307=$r1, var3950=$i0, var1123=$i1, var62=org.hibernate.AssertionFailure, var3252=$r4, var1114=$r5, var2998=$r6, var1937=java.lang.Object, var3668=$r7, var1706=$r8}
; {javax.persistence.FlushModeType=var53, r0=var2232, org.hibernate.jpa.internal.util.ConfigurationHelper$1=var1122, $r1=var3307, $i0=var3950, $i1=var1123, org.hibernate.AssertionFailure=var62, $r4=var3252, $r5=var1114, $r6=var2998, java.lang.Object=var1937, $r7=var3668, $r8=var1706}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: javax.persistence.FlushModeType;	$r1 = <org.hibernate.jpa.internal.util.ConfigurationHelper$1: int[] $SwitchMap$javax$persistence$FlushModeType>;	$i0 = virtualinvoke r0.<javax.persistence.FlushModeType: int ordinal()>();	$i1 = $r1[$i0];	lookupswitch($i1) {     case 1: goto $r3 = <org.hibernate.FlushMode: org.hibernate.FlushMode AUTO>;     case 2: goto $r2 = <org.hibernate.FlushMode: org.hibernate.FlushMode COMMIT>;     default: goto $r4 = new org.hibernate.AssertionFailure; };	$r4 = new org.hibernate.AssertionFailure;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown FlushModeType: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2