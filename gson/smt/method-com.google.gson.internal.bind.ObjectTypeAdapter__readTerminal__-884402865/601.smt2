(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3281 0)
(declare-sort var1796 0)
(declare-sort var1101 0)
(declare-sort var1704 0)
(declare-sort var3040 0)
(declare-sort var199 0)
(declare-sort var996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3040) Int)
(declare-fun cast-from-var1101-to-var3040 (var1101) var3040)
(declare-fun var199-init () var199)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var996) String)
(declare-fun cast-from-var1101-to-var996 (var1101) var996)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var199 String) void)
(declare-const null-var3281 var3281)
(declare-const null-var1796 var1796)
(declare-const null-var1101 var1101)
(declare-const var1704-$SwitchMap$com$google$gson$stream$JsonToken (Array Int Int))
(declare-const var3045 var3281) ; Statement: r4 := @this: com.google.gson.internal.bind.ObjectTypeAdapter 
(assert (not (= var3045 null-var3281)))
(declare-const var485 var1796) ; Statement: r2 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var485 null-var1796)))
(declare-const var3405 var1101) ; Statement: r0 := @parameter1: com.google.gson.stream.JsonToken 
(assert (not (= var3405 null-var1101)))
(define-const var2509 (Array Int Int) var1704-$SwitchMap$com$google$gson$stream$JsonToken) ; Statement: $r1 = <com.google.gson.internal.bind.ObjectTypeAdapter$2: int[] $SwitchMap$com$google$gson$stream$JsonToken> 
(assert true)
(define-const var634 Int (ordinal/-291641772 (cast-from-var1101-to-var3040 var3405))) ; Statement: $i0 = virtualinvoke r0.<com.google.gson.stream.JsonToken: int ordinal()>() 
(define-const var1343 Int (select var2509 var634)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 3: goto $r7 = virtualinvoke r2.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 4: goto $r5 = r4.<com.google.gson.internal.bind.ObjectTypeAdapter: com.google.gson.ToNumberStrategy toNumberStrategy>;     case 5: goto $z0 = virtualinvoke r2.<com.google.gson.stream.JsonReader: boolean nextBoolean()>();     case 6: goto virtualinvoke r2.<com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r8 = new java.lang.IllegalStateException; } 
(assert (and (not (= var1343 6)) (and (not (= var1343 5)) (and (not (= var1343 4)) (and (not (= var1343 3)) true))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Non Conditional    
(define-const var2194 var199 var199-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(define-const var67 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var67)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var67!1 String)
(assert (= var67!1 ""))
(assert true)
(define-const var1922 String (append/672562846 var67!1 "Unexpected token: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected token: ") 
(declare-const var67!2 String)
(assert (= var67!2 (str.++ var67!1 "Unexpected token: ")))
(assert true)
(define-const var477 String (append/-1031950772 var1922 (cast-from-var1101-to-var996 var3405))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1922!1 String)
(assert (str.prefixof var1922 var1922!1))
(assert true)
(define-const var2237 String (toString/-2075883882 var477)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2194 var2237)) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12) 

(declare-const var2194!1 var199)
(declare-const var2237!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1101-to-var3040=([com.google.gson.stream.JsonToken], java.lang.Enum), var199-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1101-to-var996=([com.google.gson.stream.JsonToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3281=com.google.gson.internal.bind.ObjectTypeAdapter, var3045=r4, var1796=com.google.gson.stream.JsonReader, var485=r2, var1101=com.google.gson.stream.JsonToken, var3405=r0, var1704=com.google.gson.internal.bind.ObjectTypeAdapter$2, var2509=$r1, var3040=java.lang.Enum, var634=$i0, var1343=$i1, var199=java.lang.IllegalStateException, var2194=$r8, var67=$r9, var1922=$r10, var996=java.lang.Object, var477=$r11, var2237=$r12}
; {com.google.gson.internal.bind.ObjectTypeAdapter=var3281, r4=var3045, com.google.gson.stream.JsonReader=var1796, r2=var485, com.google.gson.stream.JsonToken=var1101, r0=var3405, com.google.gson.internal.bind.ObjectTypeAdapter$2=var1704, $r1=var2509, java.lang.Enum=var3040, $i0=var634, $i1=var1343, java.lang.IllegalStateException=var199, $r8=var2194, $r9=var67, $r10=var1922, java.lang.Object=var996, $r11=var477, $r12=var2237}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.gson.internal.bind.ObjectTypeAdapter;	r2 := @parameter0: com.google.gson.stream.JsonReader;	r0 := @parameter1: com.google.gson.stream.JsonToken;	$r1 = <com.google.gson.internal.bind.ObjectTypeAdapter$2: int[] $SwitchMap$com$google$gson$stream$JsonToken>;	$i0 = virtualinvoke r0.<com.google.gson.stream.JsonToken: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 3: goto $r7 = virtualinvoke r2.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 4: goto $r5 = r4.<com.google.gson.internal.bind.ObjectTypeAdapter: com.google.gson.ToNumberStrategy toNumberStrategy>;     case 5: goto $z0 = virtualinvoke r2.<com.google.gson.stream.JsonReader: boolean nextBoolean()>();     case 6: goto virtualinvoke r2.<com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r8 = new java.lang.IllegalStateException; };	$r8 = new java.lang.IllegalStateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected token: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12);	throw $r8
;block_num 2