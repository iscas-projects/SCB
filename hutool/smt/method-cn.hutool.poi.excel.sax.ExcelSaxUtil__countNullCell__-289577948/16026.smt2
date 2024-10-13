(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1870 0)
(declare-sort var3222 0)
(declare-sort var535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3222_nullToDefault/139418954 (String String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun var535_fillBefore/-1566405616 (String Int Int) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var757 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var757 null-String)))
(declare-const var3922 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3922 null-String)))
(define-const var908 String (var3222_nullToDefault/139418954 (cast-from-String-to-String var757) "@")) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToDefault(java.lang.CharSequence,java.lang.String)>(r0, "@") 
(assert true)
(define-const var734 String (replaceAll/1692887130 var908 "\u005cd+" "")) ; Statement: r6 = virtualinvoke $r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\d+", "") 
(assert (= (replaceAll/1692887130 var908 "\u005cd+" "") (str.replace_re_all var908 (re.+ (re.range "0" "9")) "")))
(define-const var1626 String (var3222_nullToDefault/139418954 (cast-from-String-to-String var3922) "@")) ; Statement: $r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToDefault(java.lang.CharSequence,java.lang.String)>(r2, "@") 
(assert true)
(define-const var2875 String (replaceAll/1692887130 var1626 "\u005cd+" "")) ; Statement: r7 = virtualinvoke $r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\d+", "") 
(assert (= (replaceAll/1692887130 var1626 "\u005cd+" "") (str.replace_re_all var1626 (re.+ (re.range "0" "9")) "")))
(define-const var2952 String (var535_fillBefore/-1566405616 var734 64 3)) ; Statement: r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String fillBefore(java.lang.String,char,int)>(r6, 64, 3) 
(define-const var800 String (var535_fillBefore/-1566405616 var2875 64 3)) ; Statement: r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String fillBefore(java.lang.String,char,int)>(r7, 64, 3) 
(assert true)
(define-const var2285 (Array Int Int) (toCharArray/415275702 var2952)) ; Statement: r4 = virtualinvoke r8.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var561 (Array Int Int) (toCharArray/415275702 var800)) ; Statement: r5 = virtualinvoke r9.<java.lang.String: char[] toCharArray()>() 
(define-const var1679 Int (select var561 0)) ; Statement: $c1 = r5[0] 
(define-const var2956 Int (select var2285 0)) ; Statement: $c0 = r4[0] 
(define-const var227 Int (cast-from-Int-to-Int var1679)) ; Statement: $i15 = (int) $c1 
(define-const var1836 Int (cast-from-Int-to-Int var2956)) ; Statement: $i16 = (int) $c0 
(define-const var279 Int (- var227 var1836)) ; Statement: $i2 = $i15 - $i16 
(define-const var3942 Int (* var279 26)) ; Statement: $i3 = $i2 * 26 
(define-const var2259 Int (* var3942 26)) ; Statement: $i8 = $i3 * 26 
(define-const var2578 Int (select var561 1)) ; Statement: $c5 = r5[1] 
(define-const var2084 Int (select var2285 1)) ; Statement: $c4 = r4[1] 
(define-const var1935 Int (cast-from-Int-to-Int var2578)) ; Statement: $i17 = (int) $c5 
(define-const var15 Int (cast-from-Int-to-Int var2084)) ; Statement: $i18 = (int) $c4 
(define-const var3291 Int (- var1935 var15)) ; Statement: $i6 = $i17 - $i18 
(define-const var541 Int (* var3291 26)) ; Statement: $i7 = $i6 * 26 
(define-const var461 Int (+ var2259 var541)) ; Statement: $i12 = $i8 + $i7 
(define-const var3821 Int (select var561 2)) ; Statement: $c10 = r5[2] 
(define-const var520 Int (select var2285 2)) ; Statement: $c9 = r4[2] 
(define-const var1017 Int (cast-from-Int-to-Int var3821)) ; Statement: $i19 = (int) $c10 
(define-const var2783 Int (cast-from-Int-to-Int var520)) ; Statement: $i20 = (int) $c9 
(define-const var2092 Int (- var1017 var2783)) ; Statement: $i11 = $i19 - $i20 
(define-const var1063 Int (+ var461 var2092)) ; Statement: i13 = $i12 + $i11 
(define-const var3885 Int (- var1063 1)) ; Statement: $i14 = i13 - 1 
 ; Statement: return $i14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3222_nullToDefault/139418954=([java.lang.CharSequence, java.lang.String], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var535_fillBefore/-1566405616=([java.lang.String, char, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), cast-from-Int-to-Int=([char], int)}
; {var757=r0, var1870=null_type, var3922=r2, var3222=cn.hutool.core.text.CharSequenceUtil, var908=$r1, var734=r6, var1626=$r3, var2875=r7, var535=cn.hutool.core.util.StrUtil, var2952=r8, var800=r9, var2285=r4, var561=r5, var1679=$c1, var2956=$c0, var227=$i15, var1836=$i16, var279=$i2, var3942=$i3, var2259=$i8, var2578=$c5, var2084=$c4, var1935=$i17, var15=$i18, var3291=$i6, var541=$i7, var461=$i12, var3821=$c10, var520=$c9, var1017=$i19, var2783=$i20, var2092=$i11, var1063=i13, var3885=$i14}
; {r0=var757, null_type=var1870, r2=var3922, cn.hutool.core.text.CharSequenceUtil=var3222, $r1=var908, r6=var734, $r3=var1626, r7=var2875, cn.hutool.core.util.StrUtil=var535, r8=var2952, r9=var800, r4=var2285, r5=var561, $c1=var1679, $c0=var2956, $i15=var227, $i16=var1836, $i2=var279, $i3=var3942, $i8=var2259, $c5=var2578, $c4=var2084, $i17=var1935, $i18=var15, $i6=var3291, $i7=var541, $i12=var461, $c10=var3821, $c9=var520, $i19=var1017, $i20=var2783, $i11=var2092, i13=var1063, $i14=var3885}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 2,"<java.lang.String: char[] toCharArray()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToDefault(java.lang.CharSequence,java.lang.String)>(r0, "@");	r6 = virtualinvoke $r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\d+", "");	$r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToDefault(java.lang.CharSequence,java.lang.String)>(r2, "@");	r7 = virtualinvoke $r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\d+", "");	r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String fillBefore(java.lang.String,char,int)>(r6, 64, 3);	r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String fillBefore(java.lang.String,char,int)>(r7, 64, 3);	r4 = virtualinvoke r8.<java.lang.String: char[] toCharArray()>();	r5 = virtualinvoke r9.<java.lang.String: char[] toCharArray()>();	$c1 = r5[0];	$c0 = r4[0];	$i15 = (int) $c1;	$i16 = (int) $c0;	$i2 = $i15 - $i16;	$i3 = $i2 * 26;	$i8 = $i3 * 26;	$c5 = r5[1];	$c4 = r4[1];	$i17 = (int) $c5;	$i18 = (int) $c4;	$i6 = $i17 - $i18;	$i7 = $i6 * 26;	$i12 = $i8 + $i7;	$c10 = r5[2];	$c9 = r4[2];	$i19 = (int) $c10;	$i20 = (int) $c9;	$i11 = $i19 - $i20;	i13 = $i12 + $i11;	$i14 = i13 - 1;	return $i14
;block_num 1