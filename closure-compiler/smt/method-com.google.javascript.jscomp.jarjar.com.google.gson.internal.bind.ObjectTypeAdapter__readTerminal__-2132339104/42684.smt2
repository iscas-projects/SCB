(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var868 0)
(declare-sort var1880 0)
(declare-sort var180 0)
(declare-sort var1079 0)
(declare-sort var1028 0)
(declare-sort var2735 0)
(declare-sort var3356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var1028) Int)
(declare-fun cast-from-var180-to-var1028 (var180) var1028)
(declare-fun var2735-init () var2735)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3356) String)
(declare-fun cast-from-var180-to-var3356 (var180) var3356)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2735 String) void)
(declare-const null-var868 var868)
(declare-const null-var1880 var1880)
(declare-const null-var180 var180)
(declare-const var1079-$SwitchMap$com$google$gson$stream$JsonToken (Array Int Int))
(declare-const var543 var868) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.ObjectTypeAdapter 
(assert (not (= var543 null-var868)))
(declare-const var2702 var1880) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var2702 null-var1880)))
(declare-const var2622 var180) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken 
(assert (not (= var2622 null-var180)))
(define-const var91 (Array Int Int) var1079-$SwitchMap$com$google$gson$stream$JsonToken) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.ObjectTypeAdapter$2: int[] $SwitchMap$com$google$gson$stream$JsonToken> 
(assert true)
(define-const var1256 Int (ordinal/-291641772 (cast-from-var180-to-var1028 var2622))) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: int ordinal()>() 
(define-const var110 Int (select var91 var1256)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 3: goto $r7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 4: goto $r5 = r4.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.ObjectTypeAdapter: com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberStrategy toNumberStrategy>;     case 5: goto $z0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean nextBoolean()>();     case 6: goto virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r8 = new java.lang.IllegalStateException; } 
(assert (and (not (= var110 6)) (and (not (= var110 5)) (and (not (= var110 4)) (and (not (= var110 3)) true))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Non Conditional    
(define-const var2738 var2735 var2735-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(define-const var213 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var213)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var213!1 String)
(assert (= var213!1 ""))
(assert true)
(define-const var296 String (append/672562846 var213!1 "Unexpected token: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected token: ") 
(declare-const var213!2 String)
(assert (= var213!2 (str.++ var213!1 "Unexpected token: ")))
(assert true)
(define-const var3946 String (append/-1031950772 var296 (cast-from-var180-to-var3356 var2622))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var296!1 String)
(assert (str.prefixof var296 var296!1))
(assert true)
(define-const var737 String (toString/-2075883882 var3946)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2738 var737)) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12) 

(declare-const var2738!1 var2735)
(declare-const var737!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var180-to-var1028=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Enum), var2735-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var180-to-var3356=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var868=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.ObjectTypeAdapter, var543=r4, var1880=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var2702=r2, var180=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var2622=r0, var1079=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.ObjectTypeAdapter$2, var91=$r1, var1028=java.lang.Enum, var1256=$i0, var110=$i1, var2735=java.lang.IllegalStateException, var2738=$r8, var213=$r9, var296=$r10, var3356=java.lang.Object, var3946=$r11, var737=$r12}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.ObjectTypeAdapter=var868, r4=var543, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var1880, r2=var2702, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var180, r0=var2622, com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.ObjectTypeAdapter$2=var1079, $r1=var91, java.lang.Enum=var1028, $i0=var1256, $i1=var110, java.lang.IllegalStateException=var2735, $r8=var2738, $r9=var213, $r10=var296, java.lang.Object=var3356, $r11=var3946, $r12=var737}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.ObjectTypeAdapter;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.ObjectTypeAdapter$2: int[] $SwitchMap$com$google$gson$stream$JsonToken>;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 3: goto $r7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 4: goto $r5 = r4.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.ObjectTypeAdapter: com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberStrategy toNumberStrategy>;     case 5: goto $z0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean nextBoolean()>();     case 6: goto virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r8 = new java.lang.IllegalStateException; };	$r8 = new java.lang.IllegalStateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected token: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12);	throw $r8
;block_num 2