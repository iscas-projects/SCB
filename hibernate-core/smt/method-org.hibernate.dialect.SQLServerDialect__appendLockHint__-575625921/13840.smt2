(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1226 0)
(declare-sort var1519 0)
(declare-sort var817 0)
(declare-sort var3286 0)
(declare-sort var3942 0)
(declare-sort var1640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLockMode/2004258094 (var1519) var3286)
(declare-fun ordinal/-291641772 (var1640) Int)
(declare-fun cast-from-var3286-to-var1640 (var3286) var1640)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1226 var1226)
(declare-const null-var1519 var1519)
(declare-const null-String String)
(declare-const var3942-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var456 var1226) ; Statement: r16 := @this: org.hibernate.dialect.SQLServerDialect 
(assert (not (= var456 null-var1226)))
(declare-const var2882 var1519) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2882 null-var1519)))
(declare-const var11 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var11 null-String)))
(assert true)
(define-const var704 var3286 (getLockMode/2004258094 var2882)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>() 
(define-const var1541 (Array Int Int) var3942-$SwitchMap$org$hibernate$LockMode) ; Statement: $r2 = <org.hibernate.dialect.SQLServerDialect$1: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1948 Int (ordinal/-291641772 (cast-from-var3286-to-var1640 var704))) ; Statement: $i0 = virtualinvoke r1.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2374 Int (select var1541 var1948)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r12 = new java.lang.StringBuilder;     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r12 = new java.lang.StringBuilder;     case 4: goto $r12 = new java.lang.StringBuilder;     case 5: goto $r8 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     default: goto return r4; } 
(assert (and (= var2374 1) true)) ; Intersect: Cond: $i1 == 1  and Non Conditional 
(define-const var1326 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1326)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1326!1 String)
(assert (= var1326!1 ""))
(assert true)
(define-const var1648 String (append/672562846 var1326!1 var11)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1326!2 String)
(assert (= var1326!2 (str.++ var1326!1 var11)))
(assert true)
(define-const var1479 String (append/672562846 var1648 " with (updlock, rowlock)")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock)") 
(declare-const var1648!1 String)
(assert (= var1648!1 (str.++ var1648 " with (updlock, rowlock)")))
(assert true)
(define-const var2282 String (toString/-2075883882 var1479)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getLockMode/2004258094=([org.hibernate.LockOptions], org.hibernate.LockMode), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3286-to-var1640=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1226=org.hibernate.dialect.SQLServerDialect, var456=r16, var1519=org.hibernate.LockOptions, var2882=r0, var11=r4, var817=null_type, var3286=org.hibernate.LockMode, var704=r1, var3942=org.hibernate.dialect.SQLServerDialect$1, var1541=$r2, var1640=java.lang.Enum, var1948=$i0, var2374=$i1, var1326=$r12, var1648=$r13, var1479=$r14, var2282=$r15}
; {org.hibernate.dialect.SQLServerDialect=var1226, r16=var456, org.hibernate.LockOptions=var1519, r0=var2882, r4=var11, null_type=var817, org.hibernate.LockMode=var3286, r1=var704, org.hibernate.dialect.SQLServerDialect$1=var3942, $r2=var1541, java.lang.Enum=var1640, $i0=var1948, $i1=var2374, $r12=var1326, $r13=var1648, $r14=var1479, $r15=var2282}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.hibernate.dialect.SQLServerDialect;	r0 := @parameter0: org.hibernate.LockOptions;	r4 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>();	$r2 = <org.hibernate.dialect.SQLServerDialect$1: int[] $SwitchMap$org$hibernate$LockMode>;	$i0 = virtualinvoke r1.<org.hibernate.LockMode: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r12 = new java.lang.StringBuilder;     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r12 = new java.lang.StringBuilder;     case 4: goto $r12 = new java.lang.StringBuilder;     case 5: goto $r8 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     default: goto return r4; };	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock)");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 2