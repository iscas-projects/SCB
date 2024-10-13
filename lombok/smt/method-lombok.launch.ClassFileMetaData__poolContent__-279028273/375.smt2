(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var122 0)
(declare-sort var752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun maxPoolSize/-1693839518 (var122) Int)
(declare-fun arr-var752-init () (Array Int var752))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var752 (Int) var752)
(declare-fun String_format/1339386452 (String (Array Int var752)) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun offsets/-1693839518 (var122) (Array Int Int))
(declare-fun types/-1693839518 (var122) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var122 var122)
(declare-const null-__Array__Int__var752__ (Array Int var752))
(declare-const var3158 var122) ; Statement: r1 := @this: lombok.launch.ClassFileMetaData 
(assert (not (= var3158 null-var122)))
(define-const var804 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var804)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var804!1 String)
(assert (= var804!1 ""))
(define-const var3679 Int 1) ; Statement: i5 = 1 
 ; Statement: goto [?= $i6 = r1.<lombok.launch.ClassFileMetaData: int maxPoolSize>] 
(assert true) ; Non Conditional
(define-const var997 Int (maxPoolSize/-1693839518 var3158)) ; Statement: $i6 = r1.<lombok.launch.ClassFileMetaData: int maxPoolSize> 
 ; Statement: if i5 < $i6 goto $r2 = newarray (java.lang.Object)[1] 
(assert (< var3679 var997)) ; Cond: i5 < $i6 
(define-const var1928 (Array Int var752) arr-var752-init) ; Statement: $r2 = newarray (java.lang.Object)[1] 
(define-const var3618 Int (Int_valueOf/-1371140006 var3679)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i5) 
(declare-const var1928!1 (Array Int var752))
(assert (not (= var1928!1 null-__Array__Int__var752__)))
(assert (= (select var1928!1 0) (cast-from-Int-to-var752 var3618))) ; Statement: $r2[0] = $r3 
(define-const var2918 String (String_format/1339386452 "#%02x: " var1928!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("#%02x: ", $r2) 
(assert true)
;(assert (append/672562846 var804!1 var2918)) ; Statement: virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var804!2 String)
(assert (= var804!2 (str.++ var804!1 var2918)))
(define-const var3611 (Array Int Int) (offsets/-1693839518 var3158)) ; Statement: $r5 = r1.<lombok.launch.ClassFileMetaData: int[] offsets> 
(define-const var142 Int (select var3611 var3679)) ; Statement: i0 = $r5[i5] 
(define-const var177 (Array Int Int) (types/-1693839518 var3158)) ; Statement: $r6 = r1.<lombok.launch.ClassFileMetaData: byte[] types> 
(define-const var1486 Int (select var177 var3679)) ; Statement: $b1 = $r6[i5] 
(define-const var2415 Int (cast-from-Int-to-Int var1486)) ; Statement: $i7 = (int) $b1 
 ; Statement: tableswitch($i7) {     case 0: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(cont.)");     case 1: goto $r22 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Utf8 ");     case 2: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");     case 3: goto $r19 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("int ");     case 4: goto $r18 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("float ");     case 5: goto $r17 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("long ");     case 6: goto $r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("double ");     case 7: goto $r15 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");     case 8: goto $r12 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("String \"");     case 9: goto $r9 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Field ");     case 10: goto $r8 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method ");     case 11: goto $r8 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method ");     case 12: goto $r7 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name&Type ");     case 13: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");     case 14: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");     case 15: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodHandle...");     case 16: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodType...");     case 17: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dynamic...");     case 18: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("InvokeDynamic...");     default: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n"); } 
(assert (and (not (= var2415 1)) (and (not (= var2415 0)) true))) ; Intersect: Negate: Cond: $i7 == 1   and Intersect: Negate: Cond: $i7 == 0   and Non Conditional  
(assert true)
;(assert (append/672562846 var804!2 "\n")) ; Statement: virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var804!3 String)
(assert (= var804!3 (str.++ var804!2 "\n")))
(define-const var3679!1 Int (+ var3679 1)) ; Statement: i5 = i5 + 1 
(assert true) ; Non Conditional
(define-const var997!1 Int (maxPoolSize/-1693839518 var3158)) ; Statement: $i6 = r1.<lombok.launch.ClassFileMetaData: int maxPoolSize> 
 ; Statement: if i5 < $i6 goto $r2 = newarray (java.lang.Object)[1] 
(assert (not (< var3679!1 var997!1))) ; Negate: Cond: i5 < $i6  
(assert true)
(define-const var1147 String (toString/-2075883882 var804!3)) ; Statement: $r23 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), maxPoolSize/-1693839518=([lombok.launch.ClassFileMetaData], int), arr-var752-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var752=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), offsets/-1693839518=([lombok.launch.ClassFileMetaData], int[]), types/-1693839518=([lombok.launch.ClassFileMetaData], byte[]), cast-from-Int-to-Int=([byte], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var122=lombok.launch.ClassFileMetaData, var3158=r1, var804=$r24, var3679=i5, var997=$i6, var752=java.lang.Object, var1928=$r2, var3618=$r3, var2918=$r4, var3611=$r5, var142=i0, var177=$r6, var1486=$b1, var2415=$i7, var1147=$r23}
; {lombok.launch.ClassFileMetaData=var122, r1=var3158, $r24=var804, i5=var3679, $i6=var997, java.lang.Object=var752, $r2=var1928, $r3=var3618, $r4=var2918, $r5=var3611, i0=var142, $r6=var177, $b1=var1486, $i7=var2415, $r23=var1147}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ClassFileMetaData;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	i5 = 1;	goto [?= $i6 = r1.<lombok.launch.ClassFileMetaData: int maxPoolSize>];	$i6 = r1.<lombok.launch.ClassFileMetaData: int maxPoolSize>;	if i5 < $i6 goto $r2 = newarray (java.lang.Object)[1];	$r2 = newarray (java.lang.Object)[1];	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i5);	$r2[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("#%02x: ", $r2);	virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = r1.<lombok.launch.ClassFileMetaData: int[] offsets>;	i0 = $r5[i5];	$r6 = r1.<lombok.launch.ClassFileMetaData: byte[] types>;	$b1 = $r6[i5];	$i7 = (int) $b1;	tableswitch($i7) {     case 0: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(cont.)");     case 1: goto $r22 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Utf8 ");     case 2: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");     case 3: goto $r19 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("int ");     case 4: goto $r18 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("float ");     case 5: goto $r17 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("long ");     case 6: goto $r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("double ");     case 7: goto $r15 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");     case 8: goto $r12 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("String \"");     case 9: goto $r9 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Field ");     case 10: goto $r8 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method ");     case 11: goto $r8 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method ");     case 12: goto $r7 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name&Type ");     case 13: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");     case 14: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");     case 15: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodHandle...");     case 16: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodType...");     case 17: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dynamic...");     case 18: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("InvokeDynamic...");     default: goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n"); };	virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	i5 = i5 + 1;	$i6 = r1.<lombok.launch.ClassFileMetaData: int maxPoolSize>;	if i5 < $i6 goto $r2 = newarray (java.lang.Object)[1];	$r23 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	return $r23
;block_num 6