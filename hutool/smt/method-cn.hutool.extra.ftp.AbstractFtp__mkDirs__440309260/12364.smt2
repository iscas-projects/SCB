(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3264 0)
(declare-sort var3080 0)
(declare-sort var2831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2831_trim/104521694 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun pwd/1505859201 (var3264) String)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun cd/-1294441105 (var3264 String) Bool)
(declare-const null-var3264 var3264)
(declare-const null-String String)
(declare-const var3497 var3264) ; Statement: r3 := @this: cn.hutool.extra.ftp.AbstractFtp 
(assert (not (= var3497 null-var3264)))
(declare-const var659 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var659 null-String)))
(define-const var669 String (var2831_trim/104521694 (cast-from-String-to-String var659))) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var803 (Array Int String) (split/-636890950 var669 "[\u005c\u005c/]+")) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("[\\\\/]+") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var669 "[\u005c\u005c/]+") i) (re.++ (re.* re.all) (re.+ (re.union (str.to_re "\u{005c}") (str.to_re "/"))) (re.* re.all))))))
(assert true)
(define-const var3183 String (pwd/1505859201 var3497)) ; Statement: r4 = virtualinvoke r3.<cn.hutool.extra.ftp.AbstractFtp: java.lang.String pwd()>() 
(define-const var2482 Int (getLength-Arr-String-1 var803)) ; Statement: $i0 = lengthof r2 
 ; Statement: if $i0 <= 0 goto $i1 = lengthof r2 
(assert (<= var2482 0)) ; Cond: $i0 <= 0 
(define-const var3856 Int (getLength-Arr-String-1 var803)) ; Statement: $i1 = lengthof r2 
(define-const var1764 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto virtualinvoke r3.<cn.hutool.extra.ftp.AbstractFtp: boolean cd(java.lang.String)>(r4) 
(assert (>= var1764 var3856)) ; Cond: i2 >= $i1 
(assert true)
;(assert (cd/-1294441105 var3497 var3183)) ; Statement: virtualinvoke r3.<cn.hutool.extra.ftp.AbstractFtp: boolean cd(java.lang.String)>(r4) 

(declare-const var3497!1 var3264)
(declare-const var3183!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2831_trim/104521694=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), pwd/1505859201=([cn.hutool.extra.ftp.AbstractFtp], java.lang.String), getLength-Arr-String-1=([java.lang.String[]], int), cd/-1294441105=([cn.hutool.extra.ftp.AbstractFtp, java.lang.String], boolean)}
; {var3264=cn.hutool.extra.ftp.AbstractFtp, var3497=r3, var659=r0, var3080=null_type, var2831=cn.hutool.core.text.CharSequenceUtil, var669=$r1, var803=r2, var3183=r4, var2482=$i0, var3856=$i1, var1764=i2}
; {cn.hutool.extra.ftp.AbstractFtp=var3264, r3=var3497, r0=var659, null_type=var3080, cn.hutool.core.text.CharSequenceUtil=var2831, $r1=var669, r2=var803, r4=var3183, $i0=var2482, $i1=var3856, i2=var1764}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r3 := @this: cn.hutool.extra.ftp.AbstractFtp;	r0 := @parameter0: java.lang.String;	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence)>(r0);	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("[\\\\/]+");	r4 = virtualinvoke r3.<cn.hutool.extra.ftp.AbstractFtp: java.lang.String pwd()>();	$i0 = lengthof r2;	if $i0 <= 0 goto $i1 = lengthof r2;	$i1 = lengthof r2;	i2 = 0;	if i2 >= $i1 goto virtualinvoke r3.<cn.hutool.extra.ftp.AbstractFtp: boolean cd(java.lang.String)>(r4);	virtualinvoke r3.<cn.hutool.extra.ftp.AbstractFtp: boolean cd(java.lang.String)>(r4);	return
;block_num 4