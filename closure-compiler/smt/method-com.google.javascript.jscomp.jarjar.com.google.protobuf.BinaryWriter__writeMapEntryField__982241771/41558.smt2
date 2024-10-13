(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1339 0)
(declare-sort var2533 0)
(declare-sort var2137 0)
(declare-sort var2525 0)
(declare-sort var3419 0)
(declare-sort var737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3419) Int)
(declare-fun cast-from-var2533-to-var3419 (var2533) var3419)
(declare-fun var737-init () var737)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2137) String)
(declare-fun cast-from-var2533-to-var2137 (var2533) var2137)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var737 String) void)
(declare-const null-var1339 var1339)
(declare-const null-Int Int)
(declare-const null-var2533 var2533)
(declare-const null-var2137 var2137)
(declare-const var2525-$SwitchMap$com$google$protobuf$WireFormat$FieldType (Array Int Int))
(declare-const var1188 var1339) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Writer 
(assert (not (= var1188 null-var1339)))
(declare-const var3922 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3922 null-Int)))
(declare-const var1321 var2533) ; Statement: r0 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType 
(assert (not (= var1321 null-var2533)))
(declare-const var2327 var2137) ; Statement: r2 := @parameter3: java.lang.Object 
(assert (not (= var2327 null-var2137)))
(define-const var795 (Array Int Int) var2525-$SwitchMap$com$google$protobuf$WireFormat$FieldType) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType> 
(assert true)
(define-const var2929 Int (ordinal/-291641772 (cast-from-var2533-to-var3419 var1321))) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: int ordinal()>() 
(define-const var608 Int (select var795 var2929)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r21 = (java.lang.Boolean) r2;     case 2: goto $r20 = (java.lang.Integer) r2;     case 3: goto $r19 = (java.lang.Long) r2;     case 4: goto $r18 = (java.lang.Integer) r2;     case 5: goto $r17 = (java.lang.Long) r2;     case 6: goto $r16 = (java.lang.Integer) r2;     case 7: goto $r15 = (java.lang.Long) r2;     case 8: goto $r14 = (java.lang.Integer) r2;     case 9: goto $r13 = (java.lang.Long) r2;     case 10: goto $r12 = (java.lang.String) r2;     case 11: goto $r11 = (java.lang.Integer) r2;     case 12: goto $r10 = (java.lang.Long) r2;     case 13: goto $r9 = (java.lang.Float) r2;     case 14: goto $r8 = (java.lang.Double) r2;     case 15: goto interfaceinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Writer: void writeMessage(int,java.lang.Object)>(i2, r2);     case 16: goto $r7 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString) r2;     case 17: goto $z0 = r2 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLite;     default: goto $r22 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var608 17)) (and (not (= var608 16)) (and (not (= var608 15)) (and (not (= var608 14)) (and (not (= var608 13)) (and (not (= var608 12)) (and (not (= var608 11)) (and (not (= var608 10)) (and (not (= var608 9)) (and (not (= var608 8)) (and (not (= var608 7)) (and (not (= var608 6)) (and (not (= var608 5)) (and (not (= var608 4)) (and (not (= var608 3)) (and (not (= var608 2)) (and (not (= var608 1)) true)))))))))))))))))) ; Intersect: Negate: Cond: $i1 == 17   and Intersect: Negate: Cond: $i1 == 16   and Intersect: Negate: Cond: $i1 == 15   and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional                 
(define-const var2396 var737 var737-init) ; Statement: $r22 = new java.lang.IllegalArgumentException 
(define-const var3718 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3718)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3718!1 String)
(assert (= var3718!1 ""))
(assert true)
(define-const var1898 String (append/672562846 var3718!1 "Unsupported map value type for: ")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported map value type for: ") 
(declare-const var3718!2 String)
(assert (= var3718!2 (str.++ var3718!1 "Unsupported map value type for: ")))
(assert true)
(define-const var3952 String (append/-1031950772 var1898 (cast-from-var2533-to-var2137 var1321))) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1898!1 String)
(assert (str.prefixof var1898 var1898!1))
(assert true)
(define-const var3521 String (toString/-2075883882 var3952)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2396 var3521)) ; Statement: specialinvoke $r22.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r26) 

(declare-const var2396!1 var737)
(declare-const var3521!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var2533-to-var3419=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType], java.lang.Enum), var737-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2533-to-var2137=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1339=com.google.javascript.jscomp.jarjar.com.google.protobuf.Writer, var1188=r4, var3922=i2, var2533=com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType, var1321=r0, var2137=java.lang.Object, var2327=r2, var2525=com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$1, var795=$r1, var3419=java.lang.Enum, var2929=$i0, var608=$i1, var737=java.lang.IllegalArgumentException, var2396=$r22, var3718=$r23, var1898=$r24, var3952=$r25, var3521=$r26}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Writer=var1339, r4=var1188, i2=var3922, com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType=var2533, r0=var1321, java.lang.Object=var2137, r2=var2327, com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$1=var2525, $r1=var795, java.lang.Enum=var3419, $i0=var2929, $i1=var608, java.lang.IllegalArgumentException=var737, $r22=var2396, $r23=var3718, $r24=var1898, $r25=var3952, $r26=var3521}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Writer;	i2 := @parameter1: int;	r0 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType;	r2 := @parameter3: java.lang.Object;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$1: int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType>;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r21 = (java.lang.Boolean) r2;     case 2: goto $r20 = (java.lang.Integer) r2;     case 3: goto $r19 = (java.lang.Long) r2;     case 4: goto $r18 = (java.lang.Integer) r2;     case 5: goto $r17 = (java.lang.Long) r2;     case 6: goto $r16 = (java.lang.Integer) r2;     case 7: goto $r15 = (java.lang.Long) r2;     case 8: goto $r14 = (java.lang.Integer) r2;     case 9: goto $r13 = (java.lang.Long) r2;     case 10: goto $r12 = (java.lang.String) r2;     case 11: goto $r11 = (java.lang.Integer) r2;     case 12: goto $r10 = (java.lang.Long) r2;     case 13: goto $r9 = (java.lang.Float) r2;     case 14: goto $r8 = (java.lang.Double) r2;     case 15: goto interfaceinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Writer: void writeMessage(int,java.lang.Object)>(i2, r2);     case 16: goto $r7 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString) r2;     case 17: goto $z0 = r2 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumLite;     default: goto $r22 = new java.lang.IllegalArgumentException; };	$r22 = new java.lang.IllegalArgumentException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported map value type for: ");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r26);	throw $r22
;block_num 2