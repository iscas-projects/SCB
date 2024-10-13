(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1463 0)
(declare-sort var3867 0)
(declare-sort var3740 0)
(declare-sort var1334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/235758574 (var1334 String var3740) void)
(declare-fun cast-from-var1463-to-var1334 (var1463) var1334)
(declare-fun requestedVersion/-86841003 (var1463) String)
(declare-const null-var1463 var1463)
(declare-const null-String String)
(declare-const null-var3740 var3740)
(declare-const var2019 var1463) ; Statement: r0 := @this: org.hibernate.boot.UnsupportedOrmXsdVersionException 
(assert (not (= var2019 null-var1463)))
(declare-const var1687 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1687 null-String)))
(declare-const var2021 var3740) ; Statement: r6 := @parameter1: org.hibernate.boot.jaxb.Origin 
(assert (not (= var2021 null-var3740)))
(define-const var66 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var66)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var66!1 String)
(assert (= var66!1 ""))
(assert true)
(define-const var1834 String (append/672562846 var66!1 "Encountered unsupported orm.xml xsd version [")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encountered unsupported orm.xml xsd version [") 
(declare-const var66!2 String)
(assert (= var66!2 (str.++ var66!1 "Encountered unsupported orm.xml xsd version [")))
(assert true)
(define-const var2415 String (append/672562846 var1834 var1687)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1834!1 String)
(assert (= var1834!1 (str.++ var1834 var1687)))
(assert true)
(define-const var3144 String (append/672562846 var2415 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2415!1 String)
(assert (= var2415!1 (str.++ var2415 "]")))
(assert true)
(define-const var2929 String (toString/-2075883882 var3144)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/235758574 (cast-from-var1463-to-var1334 var2019) var2929 var2021)) ; Statement: specialinvoke r0.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r7, r6) 

(declare-const var2019!1 var1463)
(declare-const var2929!1 String)
(declare-const var2021!1 var3740)
(declare-const var2019!2 var1463)
(assert (not (= var2019!2 null-var1463)))
(assert (= (requestedVersion/-86841003 var2019!2) var1687)) ; Statement: r0.<org.hibernate.boot.UnsupportedOrmXsdVersionException: java.lang.String requestedVersion> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var1463-to-var1334=([org.hibernate.boot.UnsupportedOrmXsdVersionException], org.hibernate.boot.MappingException), requestedVersion/-86841003=([org.hibernate.boot.UnsupportedOrmXsdVersionException], java.lang.String)}
; {var1463=org.hibernate.boot.UnsupportedOrmXsdVersionException, var2019=r0, var1687=r2, var3867=null_type, var3740=org.hibernate.boot.jaxb.Origin, var2021=r6, var66=$r1, var1834=$r3, var2415=$r4, var3144=$r5, var2929=$r7, var1334=org.hibernate.boot.MappingException}
; {org.hibernate.boot.UnsupportedOrmXsdVersionException=var1463, r0=var2019, r2=var1687, null_type=var3867, org.hibernate.boot.jaxb.Origin=var3740, r6=var2021, $r1=var66, $r3=var1834, $r4=var2415, $r5=var3144, $r7=var2929, org.hibernate.boot.MappingException=var1334}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.UnsupportedOrmXsdVersionException;	r2 := @parameter0: java.lang.String;	r6 := @parameter1: org.hibernate.boot.jaxb.Origin;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encountered unsupported orm.xml xsd version [");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r7, r6);	r0.<org.hibernate.boot.UnsupportedOrmXsdVersionException: java.lang.String requestedVersion> = r2;	return
;block_num 1