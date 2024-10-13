(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2931 0)
(declare-sort var1662 0)
(declare-sort var2858 0)
(declare-sort var410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun hasStatement/1015177455 (var2858 String) Bool)
(declare-fun getMappedStatement/-1635696400 (var2858 String) var410)
(declare-const null-var2931 var2931)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var2858 var2858)
(declare-const var1288 var2931) ; Statement: r12 := @this: org.apache.ibatis.binding.MapperMethod$SqlCommand 
(assert (not (= var1288 null-var2931)))
(declare-const var445 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var445 null-ClassObject)))
(declare-const var537 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var537 null-String)))
(declare-const var3387 ClassObject) ; Statement: r9 := @parameter2: java.lang.Class 
(assert (not (= var3387 null-ClassObject)))
(declare-const var180 var2858) ; Statement: r8 := @parameter3: org.apache.ibatis.session.Configuration 
(assert (not (= var180 null-var2858)))
(define-const var1511 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1511)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1511!1 String)
(assert (= var1511!1 ""))
(assert true)
(define-const var737 String (getName/-1958580599 var445)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1030 String (append/672562846 var1511!1 var737)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1511!2 String)
(assert (= var1511!2 (str.++ var1511!1 var737)))
(assert true)
(define-const var112 String (append/672562846 var1030 ".")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1030!1 String)
(assert (= var1030!1 (str.++ var1030 ".")))
(assert true)
(define-const var2047 String (append/672562846 var112 var537)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var112!1 String)
(assert (= var112!1 (str.++ var112 var537)))
(assert true)
(define-const var340 String (toString/-2075883882 var2047)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3089 Bool (hasStatement/1015177455 var180 var340)) ; Statement: $z0 = virtualinvoke r8.<org.apache.ibatis.session.Configuration: boolean hasStatement(java.lang.String)>(r7) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.Object: boolean equals(java.lang.Object)>(r9) 
(assert (not (= (ite var3089 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1404 var410 (getMappedStatement/-1635696400 var180 var340)) ; Statement: $r14 = virtualinvoke r8.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.MappedStatement getMappedStatement(java.lang.String)>(r7) 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), hasStatement/1015177455=([org.apache.ibatis.session.Configuration, java.lang.String], boolean), getMappedStatement/-1635696400=([org.apache.ibatis.session.Configuration, java.lang.String], org.apache.ibatis.mapping.MappedStatement)}
; {var2931=org.apache.ibatis.binding.MapperMethod$SqlCommand, var1288=r12, var445=r1, var537=r4, var1662=null_type, var3387=r9, var2858=org.apache.ibatis.session.Configuration, var180=r8, var1511=$r0, var737=$r2, var1030=$r3, var112=$r5, var2047=$r6, var340=r7, var3089=$z0, var410=org.apache.ibatis.mapping.MappedStatement, var1404=$r14}
; {org.apache.ibatis.binding.MapperMethod$SqlCommand=var2931, r12=var1288, r1=var445, r4=var537, null_type=var1662, r9=var3387, org.apache.ibatis.session.Configuration=var2858, r8=var180, $r0=var1511, $r2=var737, $r3=var1030, $r5=var112, $r6=var2047, r7=var340, $z0=var3089, org.apache.ibatis.mapping.MappedStatement=var410, $r14=var1404}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.ibatis.binding.MapperMethod$SqlCommand;	r1 := @parameter0: java.lang.Class;	r4 := @parameter1: java.lang.String;	r9 := @parameter2: java.lang.Class;	r8 := @parameter3: org.apache.ibatis.session.Configuration;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = virtualinvoke r8.<org.apache.ibatis.session.Configuration: boolean hasStatement(java.lang.String)>(r7);	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.Object: boolean equals(java.lang.Object)>(r9);	$r14 = virtualinvoke r8.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.MappedStatement getMappedStatement(java.lang.String)>(r7);	return $r14
;block_num 2