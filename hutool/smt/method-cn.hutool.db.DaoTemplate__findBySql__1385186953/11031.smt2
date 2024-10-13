(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var613 0)
(declare-sort var2299 0)
(declare-sort var1579 0)
(declare-sort var2447 0)
(declare-sort var3897 0)
(declare-sort var1802 0)
(declare-sort var3128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var2447_subPre/839217248 (String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun db/942359618 (var613) var3897)
(declare-fun query/188783683 (var3128 String (Array Int var1579)) var1802)
(declare-fun cast-from-var3897-to-var3128 (var3897) var3128)
(declare-const null-var613 var613)
(declare-const null-String String)
(declare-const null-__Array__Int__var1579__ (Array Int var1579))
(declare-const var3855 var613) ; Statement: r4 := @this: cn.hutool.db.DaoTemplate 
(assert (not (= var3855 null-var613)))
(declare-const var2371 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var2371 null-String)))
(declare-const var2176 (Array Int var1579)) ; Statement: r5 := @parameter1: java.lang.Object[] 
(assert (not (= var2176 null-__Array__Int__var1579__)))
(assert true)
(define-const var1071 String (trim/-847153721 var2371)) ; Statement: $r0 = virtualinvoke r14.<java.lang.String: java.lang.String trim()>() 
(define-const var745 String (var2447_subPre/839217248 (cast-from-String-to-String var1071) 6)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>($r0, 6) 
(assert true)
(define-const var2872 String (toLowerCase/415700667 var745)) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var1796 String "select") ; Statement: $r3 = "select" 
(assert true)
(define-const var3714 Bool (= var1796 var2872)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if 0 != $z0 goto $r6 = r4.<cn.hutool.db.DaoTemplate: cn.hutool.db.Db db> 
(assert (not (= 0 (ite var3714 1 0)))) ; Cond: 0 != $z0 
(define-const var336 var3897 (db/942359618 var3855)) ; Statement: $r6 = r4.<cn.hutool.db.DaoTemplate: cn.hutool.db.Db db> 
(assert true)
(define-const var3588 var1802 (query/188783683 (cast-from-var3897-to-var3128 var336) var2371 var2176)) ; Statement: $r7 = virtualinvoke $r6.<cn.hutool.db.Db: java.util.List query(java.lang.String,java.lang.Object[])>(r14, r5) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), var2447_subPre/839217248=([java.lang.CharSequence, int], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toLowerCase/415700667=([java.lang.String], java.lang.String), db/942359618=([cn.hutool.db.DaoTemplate], cn.hutool.db.Db), query/188783683=([cn.hutool.db.AbstractDb, java.lang.String, java.lang.Object[]], java.util.List), cast-from-var3897-to-var3128=([cn.hutool.db.Db], cn.hutool.db.AbstractDb)}
; {var613=cn.hutool.db.DaoTemplate, var3855=r4, var2371=r14, var2299=null_type, var1579=java.lang.Object, var2176=r5, var1071=$r0, var2447=cn.hutool.core.text.CharSequenceUtil, var745=$r1, var2872=r2, var1796=$r3, var3714=$z0, var3897=cn.hutool.db.Db, var336=$r6, var1802=java.util.List, var3128=cn.hutool.db.AbstractDb, var3588=$r7}
; {cn.hutool.db.DaoTemplate=var613, r4=var3855, r14=var2371, null_type=var2299, java.lang.Object=var1579, r5=var2176, $r0=var1071, cn.hutool.core.text.CharSequenceUtil=var2447, $r1=var745, r2=var2872, $r3=var1796, $z0=var3714, cn.hutool.db.Db=var3897, $r6=var336, java.util.List=var1802, cn.hutool.db.AbstractDb=var3128, $r7=var3588}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: cn.hutool.db.DaoTemplate;	r14 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Object[];	$r0 = virtualinvoke r14.<java.lang.String: java.lang.String trim()>();	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>($r0, 6);	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>();	$r3 = "select";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if 0 != $z0 goto $r6 = r4.<cn.hutool.db.DaoTemplate: cn.hutool.db.Db db>;	$r6 = r4.<cn.hutool.db.DaoTemplate: cn.hutool.db.Db db>;	$r7 = virtualinvoke $r6.<cn.hutool.db.Db: java.util.List query(java.lang.String,java.lang.Object[])>(r14, r5);	return $r7
;block_num 2