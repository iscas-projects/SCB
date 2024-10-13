(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1604 0)
(declare-sort var2446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/262189930 (String String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var1604 var1604)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3030 var1604) ; Statement: r4 := @this: org.apache.log4j.lf5.util.LogFileParser 
(assert (not (= var3030 null-var1604)))
(declare-const var2105 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2105 null-Int)))
(declare-const var1040 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1040 null-String)))
(define-const var903 Int (- var2105 1)) ; Statement: $i1 = i0 - 1 
(assert true)
(define-const var1122 Int (lastIndexOf/262189930 var1040 "[slf5s." var903)) ; Statement: i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String,int)>("[slf5s.", $i1) 
(define-const var3983 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if i3 != $i6 goto i4 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String,int)>("]", i3) 
(assert (not (= var1122 var3983))) ; Cond: i3 != $i6 
(assert true)
(define-const var3098 Int (indexOf/1795197748 var1040 "]" var1122)) ; Statement: i4 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String,int)>("]", i3) 
(define-const var580 Int (+ var3098 1)) ; Statement: $i2 = i4 + 1 
(assert (and true (and (>= var580 0) (>= (str.len var1040) var2105) (>= var2105 var580))))
(define-const var2453 String (substring/-1240304868 var1040 var580 var2105)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i2, i0) 
(assert true)
(define-const var1370 String (trim/-847153721 var2453)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/262189930=([java.lang.String, java.lang.String, int], int), cast-from-Int-to-Int=([int], int), indexOf/1795197748=([java.lang.String, java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var1604=org.apache.log4j.lf5.util.LogFileParser, var3030=r4, var2105=i0, var1040=r0, var2446=null_type, var903=$i1, var1122=i3, var3983=$i6, var3098=i4, var580=$i2, var2453=$r1, var1370=$r2}
; {org.apache.log4j.lf5.util.LogFileParser=var1604, r4=var3030, i0=var2105, r0=var1040, null_type=var2446, $i1=var903, i3=var1122, $i6=var3983, i4=var3098, $i2=var580, $r1=var2453, $r2=var1370}
;seq <java.lang.String: int lastIndexOf(java.lang.String,int)>;	<java.lang.String: int indexOf(java.lang.String,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String,int)>": 1,"<java.lang.String: int indexOf(java.lang.String,int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.util.LogFileParser;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	$i1 = i0 - 1;	i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String,int)>("[slf5s.", $i1);	$i6 = (int) -1;	if i3 != $i6 goto i4 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String,int)>("]", i3);	i4 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String,int)>("]", i3);	$i2 = i4 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i2, i0);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	return $r2
;block_num 2