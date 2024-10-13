(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1678 0)
(declare-sort var2186 0)
(declare-sort var3250 0)
(declare-sort var221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun physicalTableName/-1676129200 (var1678) var3250)
(declare-fun var2186_format/543602932 (var2186 var3250) String)
(declare-fun initialValue/-1676129200 (var1678) Int)
(declare-fun storeLastUsedValue/-1676129200 (var1678) Bool)
(declare-fun var221-init () var221)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun segmentColumnName/-1676129200 (var1678) String)
(declare-fun valueColumnName/-1676129200 (var1678) String)
(declare-fun segmentValue/-1676129200 (var1678) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2098342399 (var221 (Array Int String)) void)
(declare-const null-var1678 var1678)
(declare-const null-var2186 var2186)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var946 var1678) ; Statement: r1 := @this: org.hibernate.id.enhanced.TableGenerator 
(assert (not (= var946 null-var1678)))
(declare-const var1801 var2186) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var1801 null-var2186)))
(define-const var3292 var3250 (physicalTableName/-1676129200 var946)) ; Statement: $r2 = r1.<org.hibernate.id.enhanced.TableGenerator: org.hibernate.boot.model.relational.QualifiedName physicalTableName> 
(define-const var143 String (var2186_format/543602932 var1801 var3292)) ; Statement: r3 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedName)>($r2) 
(define-const var3690 Int (initialValue/-1676129200 var946)) ; Statement: i1 = r1.<org.hibernate.id.enhanced.TableGenerator: int initialValue> 
(define-const var1021 Bool (storeLastUsedValue/-1676129200 var946)) ; Statement: $z0 = r1.<org.hibernate.id.enhanced.TableGenerator: boolean storeLastUsedValue> 
 ; Statement: if $z0 == 0 goto $r4 = new org.hibernate.boot.model.relational.InitCommand 
(assert (= (ite var1021 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3833 var221 var221-init) ; Statement: $r4 = new org.hibernate.boot.model.relational.InitCommand 
(define-const var3958 (Array Int String) arr-String-init) ; Statement: $r5 = newarray (java.lang.String)[1] 
(define-const var2563 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2563)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2563!1 String)
(assert (= var2563!1 ""))
(assert true)
(define-const var2511 String (append/672562846 var2563!1 "insert into ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("insert into ") 
(declare-const var2563!2 String)
(assert (= var2563!2 (str.++ var2563!1 "insert into ")))
(assert true)
(define-const var549 String (append/672562846 var2511 var143)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2511!1 String)
(assert (= var2511!1 (str.++ var2511 var143)))
(assert true)
(define-const var1007 String (append/672562846 var549 "(")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var549!1 String)
(assert (= var549!1 (str.++ var549 "(")))
(define-const var1066 String (segmentColumnName/-1676129200 var946)) ; Statement: $r9 = r1.<org.hibernate.id.enhanced.TableGenerator: java.lang.String segmentColumnName> 
(assert true)
(define-const var949 String (append/672562846 var1007 var1066)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1007!1 String)
(assert (= var1007!1 (str.++ var1007 var1066)))
(assert true)
(define-const var1101 String (append/672562846 var949 ", ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var949!1 String)
(assert (= var949!1 (str.++ var949 ", ")))
(define-const var987 String (valueColumnName/-1676129200 var946)) ; Statement: $r12 = r1.<org.hibernate.id.enhanced.TableGenerator: java.lang.String valueColumnName> 
(assert true)
(define-const var61 String (append/672562846 var1101 var987)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1101!1 String)
(assert (= var1101!1 (str.++ var1101 var987)))
(assert true)
(define-const var3237 String (append/672562846 var61 ") values (\u0027")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") values (\'") 
(declare-const var61!1 String)
(assert (= var61!1 (str.++ var61 ") values (\u0027")))
(define-const var310 String (segmentValue/-1676129200 var946)) ; Statement: $r15 = r1.<org.hibernate.id.enhanced.TableGenerator: java.lang.String segmentValue> 
(assert true)
(define-const var545 String (append/672562846 var3237 var310)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3237!1 String)
(assert (= var3237!1 (str.++ var3237 var310)))
(assert true)
(define-const var1749 String (append/672562846 var545 "\u0027,")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',") 
(declare-const var545!1 String)
(assert (= var545!1 (str.++ var545 "\u0027,")))
(assert true)
(define-const var2964 String (append/-1001720160 var1749 var3690)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1749!1 String)
(assert (str.prefixof var1749 var1749!1))
(assert true)
(define-const var3599 String (append/672562846 var2964 ")")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2964!1 String)
(assert (= var2964!1 (str.++ var2964 ")")))
(assert true)
(define-const var1791 String (toString/-2075883882 var3599)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3958!1 (Array Int String))
(assert (not (= var3958!1 null-__Array__Int__String__)))
(assert (= (select var3958!1 0) var1791)) ; Statement: $r5[0] = $r21 
(assert true)
;(assert (<init>/2098342399 var3833 var3958!1)) ; Statement: specialinvoke $r4.<org.hibernate.boot.model.relational.InitCommand: void <init>(java.lang.String[])>($r5) 

(declare-const var3833!1 var221)
(declare-const var3958!2 (Array Int String))
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {physicalTableName/-1676129200=([org.hibernate.id.enhanced.TableGenerator], org.hibernate.boot.model.relational.QualifiedName), var2186_format/543602932=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedName], java.lang.String), initialValue/-1676129200=([org.hibernate.id.enhanced.TableGenerator], int), storeLastUsedValue/-1676129200=([org.hibernate.id.enhanced.TableGenerator], boolean), var221-init=([], org.hibernate.boot.model.relational.InitCommand), arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), segmentColumnName/-1676129200=([org.hibernate.id.enhanced.TableGenerator], java.lang.String), valueColumnName/-1676129200=([org.hibernate.id.enhanced.TableGenerator], java.lang.String), segmentValue/-1676129200=([org.hibernate.id.enhanced.TableGenerator], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2098342399=([org.hibernate.boot.model.relational.InitCommand, java.lang.String[]], void)}
; {var1678=org.hibernate.id.enhanced.TableGenerator, var946=r1, var2186=org.hibernate.boot.model.relational.SqlStringGenerationContext, var1801=r0, var3250=org.hibernate.boot.model.relational.QualifiedName, var3292=$r2, var143=r3, var3690=i1, var1021=$z0, var221=org.hibernate.boot.model.relational.InitCommand, var3833=$r4, var3958=$r5, var2563=$r6, var2511=$r7, var549=$r8, var1007=$r10, var1066=$r9, var949=$r11, var1101=$r13, var987=$r12, var61=$r14, var3237=$r16, var310=$r15, var545=$r17, var1749=$r18, var2964=$r19, var3599=$r20, var1791=$r21}
; {org.hibernate.id.enhanced.TableGenerator=var1678, r1=var946, org.hibernate.boot.model.relational.SqlStringGenerationContext=var2186, r0=var1801, org.hibernate.boot.model.relational.QualifiedName=var3250, $r2=var3292, r3=var143, i1=var3690, $z0=var1021, org.hibernate.boot.model.relational.InitCommand=var221, $r4=var3833, $r5=var3958, $r6=var2563, $r7=var2511, $r8=var549, $r10=var1007, $r9=var1066, $r11=var949, $r13=var1101, $r12=var987, $r14=var61, $r16=var3237, $r15=var310, $r17=var545, $r18=var1749, $r19=var2964, $r20=var3599, $r21=var1791}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.id.enhanced.TableGenerator;	r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r2 = r1.<org.hibernate.id.enhanced.TableGenerator: org.hibernate.boot.model.relational.QualifiedName physicalTableName>;	r3 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedName)>($r2);	i1 = r1.<org.hibernate.id.enhanced.TableGenerator: int initialValue>;	$z0 = r1.<org.hibernate.id.enhanced.TableGenerator: boolean storeLastUsedValue>;	if $z0 == 0 goto $r4 = new org.hibernate.boot.model.relational.InitCommand;	$r4 = new org.hibernate.boot.model.relational.InitCommand;	$r5 = newarray (java.lang.String)[1];	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("insert into ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r9 = r1.<org.hibernate.id.enhanced.TableGenerator: java.lang.String segmentColumnName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r12 = r1.<org.hibernate.id.enhanced.TableGenerator: java.lang.String valueColumnName>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") values (\'");	$r15 = r1.<org.hibernate.id.enhanced.TableGenerator: java.lang.String segmentValue>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r5[0] = $r21;	specialinvoke $r4.<org.hibernate.boot.model.relational.InitCommand: void <init>(java.lang.String[])>($r5);	return $r4
;block_num 2