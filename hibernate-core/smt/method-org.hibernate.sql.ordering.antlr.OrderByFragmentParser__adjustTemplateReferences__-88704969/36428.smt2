(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var37 0)
(declare-sort var3199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var37 var37)
(declare-const null-String String)
(declare-const var3456 var37) ; Statement: r5 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser 
(assert (not (= var3456 null-var37)))
(declare-const var481 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var481 null-String)))
(assert true)
(define-const var3902 Int (length/-134980193 var481)) ; Statement: i7 = virtualinvoke r10.<java.lang.String: int length()>() 
(assert true)
(define-const var966 Int (indexOf/-1209756239 var481 "$PlaceHolder$")) ; Statement: i8 = virtualinvoke r10.<java.lang.String: int indexOf(java.lang.String)>("$PlaceHolder$") 
(assert true) ; Non Conditional
(define-const var868 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i8 == $i11 goto return r10 
(assert (= var966 var868)) ; Cond: i8 == $i11 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var37=org.hibernate.sql.ordering.antlr.OrderByFragmentParser, var3456=r5, var481=r10, var3199=null_type, var3902=i7, var966=i8, var868=$i11}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentParser=var37, r5=var3456, r10=var481, null_type=var3199, i7=var3902, i8=var966, $i11=var868}
;seq <java.lang.String: int length()>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r5 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser;	r10 := @parameter0: java.lang.String;	i7 = virtualinvoke r10.<java.lang.String: int length()>();	i8 = virtualinvoke r10.<java.lang.String: int indexOf(java.lang.String)>("$PlaceHolder$");	$i11 = (int) -1;	if i8 == $i11 goto return r10;	return r10
;block_num 3