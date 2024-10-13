(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1005 0)
(declare-sort var3358 0)
(declare-sort var170 0)
(declare-sort var860 0)
(declare-sort var3880 0)
(declare-sort var247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/789869347 (var3880 String var247) void)
(declare-fun cast-from-var1005-to-var3880 (var1005) var3880)
(declare-fun cast-from-var170-to-var247 (var170) var247)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun renderedString/-762654253 (var1005) String)
(declare-const null-var1005 var1005)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var860-TIMESTAMP var170)
(declare-const var1832 var1005) ; Statement: r0 := @this: org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction 
(assert (not (= var1832 null-var1005)))
(declare-const var1347 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1347 null-String)))
(declare-const var2853 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2853 null-Int)))
(define-const var1433 var170 var860-TIMESTAMP) ; Statement: $r2 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.TimestampType TIMESTAMP> 
(assert true)
;(assert (<init>/789869347 (cast-from-var1005-to-var3880 var1832) var1347 (cast-from-var170-to-var247 var1433))) ; Statement: specialinvoke r0.<org.hibernate.dialect.function.NoArgSQLFunction: void <init>(java.lang.String,org.hibernate.type.Type)>(r1, $r2) 

(declare-const var1832!1 var1005)
(declare-const var1347!1 String)
(declare-const var1433!1 var170)
 ; Statement: if i0 >= 0 goto $r3 = new java.lang.StringBuilder 
(assert (>= var2853 0)) ; Cond: i0 >= 0 
(define-const var1550 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1550)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1550!1 String)
(assert (= var1550!1 ""))
(assert true)
(define-const var3877 String (append/672562846 var1550!1 var1347!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1550!2 String)
(assert (= var1550!2 (str.++ var1550!1 var1347!1)))
(assert true)
(define-const var3470 String (append/-1166366385 var3877 40)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3877!1 String)
(assert (str.prefixof var3877 var3877!1))
(assert true)
(define-const var2840 String (append/-1001720160 var3470 var2853)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3470!1 String)
(assert (str.prefixof var3470 var3470!1))
(assert true)
(define-const var101 String (append/-1166366385 var2840 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2840!1 String)
(assert (str.prefixof var2840 var2840!1))
(assert true)
(define-const var3258 String (toString/-2075883882 var101)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1832!2 var1005)
(assert (not (= var1832!2 null-var1005)))
(assert (= (renderedString/-762654253 var1832!2) var3258)) ; Statement: r0.<org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction: java.lang.String renderedString> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/789869347=([org.hibernate.dialect.function.NoArgSQLFunction, java.lang.String, org.hibernate.type.Type], void), cast-from-var1005-to-var3880=([org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction], org.hibernate.dialect.function.NoArgSQLFunction), cast-from-var170-to-var247=([org.hibernate.type.TimestampType], org.hibernate.type.Type), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), renderedString/-762654253=([org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction], java.lang.String)}
; {var1005=org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction, var1832=r0, var1347=r1, var3358=null_type, var2853=i0, var170=org.hibernate.type.TimestampType, var860=org.hibernate.type.StandardBasicTypes, var1433=$r2, var3880=org.hibernate.dialect.function.NoArgSQLFunction, var247=org.hibernate.type.Type, var1550=$r3, var3877=$r4, var3470=$r5, var2840=$r6, var101=$r7, var3258=$r8}
; {org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction=var1005, r0=var1832, r1=var1347, null_type=var3358, i0=var2853, org.hibernate.type.TimestampType=var170, org.hibernate.type.StandardBasicTypes=var860, $r2=var1433, org.hibernate.dialect.function.NoArgSQLFunction=var3880, org.hibernate.type.Type=var247, $r3=var1550, $r4=var3877, $r5=var3470, $r6=var2840, $r7=var101, $r8=var3258}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r2 = <org.hibernate.type.StandardBasicTypes: org.hibernate.type.TimestampType TIMESTAMP>;	specialinvoke r0.<org.hibernate.dialect.function.NoArgSQLFunction: void <init>(java.lang.String,org.hibernate.type.Type)>(r1, $r2);	if i0 >= 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction: java.lang.String renderedString> = $r8;	return
;block_num 2