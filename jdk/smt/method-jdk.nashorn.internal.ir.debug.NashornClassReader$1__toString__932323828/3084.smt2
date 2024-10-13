(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3068 0)
(declare-sort var65 0)
(declare-sort var1521 0)
(declare-sort var1520 0)
(declare-sort var3508 0)
(declare-sort var3982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun index/1760037291 (var65) Int)
(declare-fun cast-from-var3068-to-var65 (var3068) var65)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun cp/-1593354951 (var1520) var1521)
(declare-fun cast-from-var3068-to-var1520 (var3068) var1520)
(declare-fun index2/-1273418777 (var3508) Int)
(declare-fun cast-from-var3068-to-var3508 (var3068) var3508)
(declare-fun get/-1298449658 (var1521 Int) var3982)
(declare-fun cast-from-var3982-to-var1520 (var3982) var1520)
(declare-fun toString/-522406933 (var3982) String)
(declare-fun cast-from-var1520-to-var3982 (var1520) var3982)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3068 var3068)
(declare-const var720 var3068) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornClassReader$1 
(assert (not (= var720 null-var3068)))
(define-const var1776 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1776)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1776!1 String)
(assert (= var1776!1 ""))
(assert true)
(define-const var3389 String (append/672562846 var1776!1 "#")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1776!2 String)
(assert (= var1776!2 (str.++ var1776!1 "#")))
(define-const var2038 Int (index/1760037291 (cast-from-var3068-to-var65 var720))) ; Statement: $i0 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$1: int index> 
(assert true)
(define-const var3114 String (append/-1001720160 var3389 var2038)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3389!1 String)
(assert (str.prefixof var3389 var3389!1))
(assert true)
(define-const var2194 String (append/-1166366385 var3114 32)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3114!1 String)
(assert (str.prefixof var3114 var3114!1))
(define-const var3699 var1521 (cp/-1593354951 (cast-from-var3068-to-var1520 var720))) ; Statement: $r4 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$1: java.util.ArrayList cp> 
(define-const var3694 Int (index2/-1273418777 (cast-from-var3068-to-var3508 var720))) ; Statement: $i1 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$1: int index2> 
(assert true)
(define-const var46 var3982 (get/-1298449658 var3699 var3694)) ; Statement: $r5 = virtualinvoke $r4.<java.util.ArrayList: java.lang.Object get(int)>($i1) 
(define-const var2346 var1520 (cast-from-var3982-to-var1520 var46)) ; Statement: $r6 = (jdk.nashorn.internal.ir.debug.NashornClassReader$Constant) $r5 
(assert true)
(define-const var854 String (toString/-522406933 (cast-from-var1520-to-var3982 var2346))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1251 String (append/672562846 var2194 var854)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2194!1 String)
(assert (= var2194!1 (str.++ var2194 var854)))
(assert true)
(define-const var3978 String (toString/-2075883882 var1251)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), index/1760037291=([jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo], int), cast-from-var3068-to-var65=([jdk.nashorn.internal.ir.debug.NashornClassReader$1], jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), cp/-1593354951=([jdk.nashorn.internal.ir.debug.NashornClassReader$Constant], java.util.ArrayList), cast-from-var3068-to-var1520=([jdk.nashorn.internal.ir.debug.NashornClassReader$1], jdk.nashorn.internal.ir.debug.NashornClassReader$Constant), index2/-1273418777=([jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2], int), cast-from-var3068-to-var3508=([jdk.nashorn.internal.ir.debug.NashornClassReader$1], jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2), get/-1298449658=([java.util.ArrayList, int], java.lang.Object), cast-from-var3982-to-var1520=([java.lang.Object], jdk.nashorn.internal.ir.debug.NashornClassReader$Constant), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1520-to-var3982=([jdk.nashorn.internal.ir.debug.NashornClassReader$Constant], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3068=jdk.nashorn.internal.ir.debug.NashornClassReader$1, var720=r1, var1776=$r0, var3389=$r2, var65=jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo, var2038=$i0, var3114=$r3, var2194=$r8, var1521=java.util.ArrayList, var1520=jdk.nashorn.internal.ir.debug.NashornClassReader$Constant, var3699=$r4, var3508=jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2, var3694=$i1, var3982=java.lang.Object, var46=$r5, var2346=$r6, var854=$r7, var1251=$r9, var3978=$r10}
; {jdk.nashorn.internal.ir.debug.NashornClassReader$1=var3068, r1=var720, $r0=var1776, $r2=var3389, jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo=var65, $i0=var2038, $r3=var3114, $r8=var2194, java.util.ArrayList=var1521, jdk.nashorn.internal.ir.debug.NashornClassReader$Constant=var1520, $r4=var3699, jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2=var3508, $i1=var3694, java.lang.Object=var3982, $r5=var46, $r6=var2346, $r7=var854, $r9=var1251, $r10=var3978}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornClassReader$1;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$i0 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$1: int index>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$1: java.util.ArrayList cp>;	$i1 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$1: int index2>;	$r5 = virtualinvoke $r4.<java.util.ArrayList: java.lang.Object get(int)>($i1);	$r6 = (jdk.nashorn.internal.ir.debug.NashornClassReader$Constant) $r5;	$r7 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1