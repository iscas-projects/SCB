(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3629 0)
(declare-sort var1486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1486-init () var1486)
(declare-fun <init>/415485128 (var1486 String) void)
(declare-fun perform/1084417011 (var1486) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-String String)
(declare-const var2916 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2916 null-String)))
(define-const var2885 var1486 var1486-init) ; Statement: $r0 = new cn.hutool.db.sql.SqlFormatter$FormatProcess 
(assert true)
;(assert (<init>/415485128 var2885 var2916)) ; Statement: specialinvoke $r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void <init>(java.lang.String)>(r1) 

(declare-const var2885!1 var1486)
(declare-const var2916!1 String)
(assert true)
(define-const var1088 String (perform/1084417011 var2885!1)) ; Statement: $r2 = virtualinvoke $r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String perform()>() 
(assert true)
(define-const var617 String (trim/-847153721 var1088)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1486-init=([], cn.hutool.db.sql.SqlFormatter$FormatProcess), <init>/415485128=([cn.hutool.db.sql.SqlFormatter$FormatProcess, java.lang.String], void), perform/1084417011=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var2916=r1, var3629=null_type, var1486=cn.hutool.db.sql.SqlFormatter$FormatProcess, var2885=$r0, var1088=$r2, var617=$r3}
; {r1=var2916, null_type=var3629, cn.hutool.db.sql.SqlFormatter$FormatProcess=var1486, $r0=var2885, $r2=var1088, $r3=var617}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new cn.hutool.db.sql.SqlFormatter$FormatProcess;	specialinvoke $r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void <init>(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String perform()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	return $r3
;block_num 1