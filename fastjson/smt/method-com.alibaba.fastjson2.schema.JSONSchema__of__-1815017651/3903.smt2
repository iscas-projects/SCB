(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3512 0)
(declare-sort var3594 0)
(declare-sort var63 0)
(declare-sort var1781 0)
(declare-sort var3628 0)
(declare-sort var3364 0)
(declare-sort var3402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/1992452270 (var3512 String) String)
(declare-fun var63_of/1835404763 (String) var63)
(declare-fun ordinal/-291641772 (var3628) Int)
(declare-fun cast-from-var63-to-var3628 (var63) var3628)
(declare-fun var3364-init () var3364)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3402) String)
(declare-fun cast-from-var63-to-var3402 (var63) var3402)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/297806017 (var3364 String) void)
(declare-const null-var3512 var3512)
(declare-const null-var3594 var3594)
(declare-const null-var63 var63)
(declare-const var1781-$SwitchMap$com$alibaba$fastjson2$schema$JSONSchema$Type (Array Int Int))
(declare-const var350 var3512) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var350 null-var3512)))
(declare-const var526 var3594) ; Statement: r5 := @parameter1: com.alibaba.fastjson2.schema.JSONSchema 
(assert (not (= var526 null-var3594)))
(assert true)
(define-const var29 String (getString/1992452270 var350 "type")) ; Statement: $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(define-const var1874 var63 (var63_of/1835404763 var29)) ; Statement: r2 = staticinvoke <com.alibaba.fastjson2.schema.JSONSchema$Type: com.alibaba.fastjson2.schema.JSONSchema$Type of(java.lang.String)>($r1) 
 ; Statement: if r2 != null goto $r3 = <com.alibaba.fastjson2.schema.JSONSchema$1: int[] $SwitchMap$com$alibaba$fastjson2$schema$JSONSchema$Type> 
(assert (not (= var1874 null-var63))) ; Cond: r2 != null 
(define-const var2053 (Array Int Int) var1781-$SwitchMap$com$alibaba$fastjson2$schema$JSONSchema$Type) ; Statement: $r3 = <com.alibaba.fastjson2.schema.JSONSchema$1: int[] $SwitchMap$com$alibaba$fastjson2$schema$JSONSchema$Type> 
(assert true)
(define-const var422 Int (ordinal/-291641772 (cast-from-var63-to-var3628 var1874))) ; Statement: $i0 = virtualinvoke r2.<com.alibaba.fastjson2.schema.JSONSchema$Type: int ordinal()>() 
(define-const var1681 Int (select var2053 var422)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r11 = new com.alibaba.fastjson2.schema.StringSchema;     case 2: goto $r10 = new com.alibaba.fastjson2.schema.IntegerSchema;     case 3: goto $r9 = new com.alibaba.fastjson2.schema.NumberSchema;     case 4: goto $r8 = new com.alibaba.fastjson2.schema.BooleanSchema;     case 5: goto $r7 = new com.alibaba.fastjson2.schema.NullSchema;     case 6: goto $r6 = new com.alibaba.fastjson2.schema.ObjectSchema;     case 7: goto $r4 = new com.alibaba.fastjson2.schema.ArraySchema;     default: goto $r12 = new com.alibaba.fastjson2.JSONSchemaValidException; } 
(assert (and (not (= var1681 7)) (and (not (= var1681 6)) (and (not (= var1681 5)) (and (not (= var1681 4)) (and (not (= var1681 3)) (and (not (= var1681 2)) (and (not (= var1681 1)) true)))))))) ; Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional       
(define-const var3782 var3364 var3364-init) ; Statement: $r12 = new com.alibaba.fastjson2.JSONSchemaValidException 
(define-const var193 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var193)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var193!1 String)
(assert (= var193!1 ""))
(assert true)
(define-const var2620 String (append/672562846 var193!1 "not support type : ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support type : ") 
(declare-const var193!2 String)
(assert (= var193!2 (str.++ var193!1 "not support type : ")))
(assert true)
(define-const var2573 String (append/-1031950772 var2620 (cast-from-var63-to-var3402 var1874))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2620!1 String)
(assert (str.prefixof var2620 var2620!1))
(assert true)
(define-const var1795 String (toString/-2075883882 var2573)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/297806017 var3782 var1795)) ; Statement: specialinvoke $r12.<com.alibaba.fastjson2.JSONSchemaValidException: void <init>(java.lang.String)>($r16) 

(declare-const var3782!1 var3364)
(declare-const var1795!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), var63_of/1835404763=([java.lang.String], com.alibaba.fastjson2.schema.JSONSchema$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var63-to-var3628=([com.alibaba.fastjson2.schema.JSONSchema$Type], java.lang.Enum), var3364-init=([], com.alibaba.fastjson2.JSONSchemaValidException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var63-to-var3402=([com.alibaba.fastjson2.schema.JSONSchema$Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/297806017=([com.alibaba.fastjson2.JSONSchemaValidException, java.lang.String], void)}
; {var3512=com.alibaba.fastjson2.JSONObject, var350=r0, var3594=com.alibaba.fastjson2.schema.JSONSchema, var526=r5, var29=$r1, var63=com.alibaba.fastjson2.schema.JSONSchema$Type, var1874=r2, var1781=com.alibaba.fastjson2.schema.JSONSchema$1, var2053=$r3, var3628=java.lang.Enum, var422=$i0, var1681=$i1, var3364=com.alibaba.fastjson2.JSONSchemaValidException, var3782=$r12, var193=$r13, var2620=$r14, var3402=java.lang.Object, var2573=$r15, var1795=$r16}
; {com.alibaba.fastjson2.JSONObject=var3512, r0=var350, com.alibaba.fastjson2.schema.JSONSchema=var3594, r5=var526, $r1=var29, com.alibaba.fastjson2.schema.JSONSchema$Type=var63, r2=var1874, com.alibaba.fastjson2.schema.JSONSchema$1=var1781, $r3=var2053, java.lang.Enum=var3628, $i0=var422, $i1=var1681, com.alibaba.fastjson2.JSONSchemaValidException=var3364, $r12=var3782, $r13=var193, $r14=var2620, java.lang.Object=var3402, $r15=var2573, $r16=var1795}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.alibaba.fastjson2.JSONObject;	r5 := @parameter1: com.alibaba.fastjson2.schema.JSONSchema;	$r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	r2 = staticinvoke <com.alibaba.fastjson2.schema.JSONSchema$Type: com.alibaba.fastjson2.schema.JSONSchema$Type of(java.lang.String)>($r1);	if r2 != null goto $r3 = <com.alibaba.fastjson2.schema.JSONSchema$1: int[] $SwitchMap$com$alibaba$fastjson2$schema$JSONSchema$Type>;	$r3 = <com.alibaba.fastjson2.schema.JSONSchema$1: int[] $SwitchMap$com$alibaba$fastjson2$schema$JSONSchema$Type>;	$i0 = virtualinvoke r2.<com.alibaba.fastjson2.schema.JSONSchema$Type: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r11 = new com.alibaba.fastjson2.schema.StringSchema;     case 2: goto $r10 = new com.alibaba.fastjson2.schema.IntegerSchema;     case 3: goto $r9 = new com.alibaba.fastjson2.schema.NumberSchema;     case 4: goto $r8 = new com.alibaba.fastjson2.schema.BooleanSchema;     case 5: goto $r7 = new com.alibaba.fastjson2.schema.NullSchema;     case 6: goto $r6 = new com.alibaba.fastjson2.schema.ObjectSchema;     case 7: goto $r4 = new com.alibaba.fastjson2.schema.ArraySchema;     default: goto $r12 = new com.alibaba.fastjson2.JSONSchemaValidException; };	$r12 = new com.alibaba.fastjson2.JSONSchemaValidException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support type : ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<com.alibaba.fastjson2.JSONSchemaValidException: void <init>(java.lang.String)>($r16);	throw $r12
;block_num 3