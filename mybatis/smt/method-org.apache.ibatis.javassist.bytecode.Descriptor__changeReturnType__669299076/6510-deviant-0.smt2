(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2885 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2885 null-String)))
(declare-const var3513 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3513 null-String)))
(assert true)
(define-const var3412 Int (indexOf/-1037706067 var3513 41)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
 ; Statement: if i0 >= 0 goto $r1 = new java.lang.StringBuilder 
(assert (>= var3412 0)) ; Cond: i0 >= 0 
(define-const var607 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var607)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var607!1 String)
(assert (= var607!1 ""))
(define-const var129 Int (+ var3412 1)) ; Statement: $i1 = i0 + 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var3513) var129) (>= var129 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2885=r3, var3890=null_type, var3513=r0, var3412=i0, var607=$r1, var129=$i1, var2397=$r2, var3669=$r4, var658=$r5}
; {r3=var2885, null_type=var3890, r0=var3513, i0=var3412, $r1=var607, $i1=var129, $r2=var2397, $r4=var3669, $r5=var658}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	if i0 >= 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$i1 = i0 + 1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2