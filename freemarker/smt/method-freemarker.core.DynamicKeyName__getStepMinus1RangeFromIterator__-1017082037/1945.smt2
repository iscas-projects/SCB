(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2082 0)
(declare-sort var2551 0)
(declare-sort var3898 0)
(declare-sort var3052 0)
(declare-sort var724 0)
(declare-sort var1923 0)
(declare-sort var1284 0)
(declare-sort var1971 0)
(declare-sort var648 0)
(declare-sort var3608 0)
(declare-sort var2053 0)
(declare-sort var3325 0)
(declare-sort var859 0)
(declare-sort var685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBegining/489908244 (var3898) Int)
(declare-fun size/1292965855 (var3052) Int)
(declare-fun cast-from-var3898-to-var3052 (var3898) var3052)
(declare-fun var724_max/1360571700 (Int Int) Int)
(declare-fun arr-var1923-init () (Array Int var1923))
(declare-fun getLength-Arr-var1923-1 ((Array Int var1923)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1284-init () var1284)
(declare-fun var648_asList/1779083644 ((Array Int var3608)) var1971)
(declare-fun cast-from-__Array__Int__var1923__-to-__Array__Int__var3608__ ((Array Int var1923)) (Array Int var3608))
(declare-fun <init>/-32413734 (var1284 var859 var685) void)
(declare-fun cast-from-var1971-to-var859 (var1971) var859)
(declare-fun cast-from-var2053-to-var685 (var2053) var685)
(declare-const null-var2082 var2082)
(declare-const null-var2551 var2551)
(declare-const null-var3898 var3898)
(declare-const null-Int Int)
(declare-const var3325-SAFE_OBJECT_WRAPPER var2053)
(declare-const var3666 var2082) ; Statement: r6 := @this: freemarker.core.DynamicKeyName 
(assert (not (= var3666 null-var2082)))
(declare-const var2149 var2551) ; Statement: r14 := @parameter0: freemarker.template.TemplateModelIterator 
(assert (not (= var2149 null-var2551)))
(declare-const var3313 var3898) ; Statement: r0 := @parameter1: freemarker.core.RangeModel 
(assert (not (= var3313 null-var3898)))
(declare-const var3797 Int) ; Statement: i9 := @parameter2: int 
(assert (not (= var3797 null-Int)))
(assert true)
(define-const var715 Int (getBegining/489908244 var3313)) ; Statement: i0 = virtualinvoke r0.<freemarker.core.RangeModel: int getBegining()>() 
(assert true)
(define-const var933 Int (size/1292965855 (cast-from-var3898-to-var3052 var3313))) ; Statement: $i1 = virtualinvoke r0.<freemarker.core.RangeModel: int size()>() 
(define-const var551 Int (- var933 1)) ; Statement: $i2 = $i1 - 1 
(define-const var3460 Int (- var715 var551)) ; Statement: $i3 = i0 - $i2 
(define-const var3538 Int (var724_max/1360571700 var3460 0)) ; Statement: i4 = staticinvoke <java.lang.Math: int max(int,int)>($i3, 0) 
(define-const var2094 Int (- var715 var3538)) ; Statement: $i5 = i0 - i4 
(define-const var1799 Int (+ var2094 1)) ; Statement: $i6 = $i5 + 1 
(define-const var416 (Array Int var1923) arr-var1923-init) ; Statement: r1 = newarray (freemarker.template.TemplateModel)[$i6] 
(define-const var1153 Int 0) ; Statement: i10 = 0 
(define-const var109 Int (getLength-Arr-var1923-1 var416)) ; Statement: $i7 = lengthof r1 
(define-const var639 Int (- var109 1)) ; Statement: i11 = $i7 - 1 
(assert true) ; Non Conditional
 ; Statement: if i10 > i0 goto $i15 = (int) -1 
(assert (> var1153 var715)) ; Cond: i10 > i0 
(define-const var1717 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
 ; Statement: if i11 == $i15 goto $r18 = new freemarker.template.SimpleSequence 
(assert (= var639 var1717)) ; Cond: i11 == $i15 
(define-const var955 var1284 var1284-init) ; Statement: $r18 = new freemarker.template.SimpleSequence 
(define-const var962 var1971 (var648_asList/1779083644 (cast-from-__Array__Int__var1923__-to-__Array__Int__var3608__ var416))) ; Statement: $r4 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r1) 
(define-const var746 var2053 var3325-SAFE_OBJECT_WRAPPER) ; Statement: $r3 = <freemarker.template._ObjectWrappers: freemarker.template.SimpleObjectWrapper SAFE_OBJECT_WRAPPER> 
(assert true)
;(assert (<init>/-32413734 var955 (cast-from-var1971-to-var859 var962) (cast-from-var2053-to-var685 var746))) ; Statement: specialinvoke $r18.<freemarker.template.SimpleSequence: void <init>(java.util.Collection,freemarker.template.ObjectWrapper)>($r4, $r3) 

(declare-const var955!1 var1284)
(declare-const var962!1 var1971)
(declare-const var746!1 var2053)
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {getBegining/489908244=([freemarker.core.RangeModel], int), size/1292965855=([freemarker.template.TemplateSequenceModel], int), cast-from-var3898-to-var3052=([freemarker.core.RangeModel], freemarker.template.TemplateSequenceModel), var724_max/1360571700=([int, int], int), arr-var1923-init=([], freemarker.template.TemplateModel[]), getLength-Arr-var1923-1=([freemarker.template.TemplateModel[]], int), cast-from-Int-to-Int=([int], int), var1284-init=([], freemarker.template.SimpleSequence), var648_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__var1923__-to-__Array__Int__var3608__=([freemarker.template.TemplateModel[]], java.lang.Object[]), <init>/-32413734=([freemarker.template.SimpleSequence, java.util.Collection, freemarker.template.ObjectWrapper], void), cast-from-var1971-to-var859=([java.util.List], java.util.Collection), cast-from-var2053-to-var685=([freemarker.template.SimpleObjectWrapper], freemarker.template.ObjectWrapper)}
; {var2082=freemarker.core.DynamicKeyName, var3666=r6, var2551=freemarker.template.TemplateModelIterator, var2149=r14, var3898=freemarker.core.RangeModel, var3313=r0, var3797=i9, var715=i0, var3052=freemarker.template.TemplateSequenceModel, var933=$i1, var551=$i2, var3460=$i3, var724=java.lang.Math, var3538=i4, var2094=$i5, var1799=$i6, var1923=freemarker.template.TemplateModel, var416=r1, var1153=i10, var109=$i7, var639=i11, var1717=$i15, var1284=freemarker.template.SimpleSequence, var955=$r18, var1971=java.util.List, var648=java.util.Arrays, var3608=java.lang.Object, var962=$r4, var2053=freemarker.template.SimpleObjectWrapper, var3325=freemarker.template._ObjectWrappers, var746=$r3, var859=java.util.Collection, var685=freemarker.template.ObjectWrapper}
; {freemarker.core.DynamicKeyName=var2082, r6=var3666, freemarker.template.TemplateModelIterator=var2551, r14=var2149, freemarker.core.RangeModel=var3898, r0=var3313, i9=var3797, i0=var715, freemarker.template.TemplateSequenceModel=var3052, $i1=var933, $i2=var551, $i3=var3460, java.lang.Math=var724, i4=var3538, $i5=var2094, $i6=var1799, freemarker.template.TemplateModel=var1923, r1=var416, i10=var1153, $i7=var109, i11=var639, $i15=var1717, freemarker.template.SimpleSequence=var1284, $r18=var955, java.util.List=var1971, java.util.Arrays=var648, java.lang.Object=var3608, $r4=var962, freemarker.template.SimpleObjectWrapper=var2053, freemarker.template._ObjectWrappers=var3325, $r3=var746, java.util.Collection=var859, freemarker.template.ObjectWrapper=var685}
;seq 
;cnt {}
;stmts r6 := @this: freemarker.core.DynamicKeyName;	r14 := @parameter0: freemarker.template.TemplateModelIterator;	r0 := @parameter1: freemarker.core.RangeModel;	i9 := @parameter2: int;	i0 = virtualinvoke r0.<freemarker.core.RangeModel: int getBegining()>();	$i1 = virtualinvoke r0.<freemarker.core.RangeModel: int size()>();	$i2 = $i1 - 1;	$i3 = i0 - $i2;	i4 = staticinvoke <java.lang.Math: int max(int,int)>($i3, 0);	$i5 = i0 - i4;	$i6 = $i5 + 1;	r1 = newarray (freemarker.template.TemplateModel)[$i6];	i10 = 0;	$i7 = lengthof r1;	i11 = $i7 - 1;	if i10 > i0 goto $i15 = (int) -1;	$i15 = (int) -1;	if i11 == $i15 goto $r18 = new freemarker.template.SimpleSequence;	$r18 = new freemarker.template.SimpleSequence;	$r4 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r1);	$r3 = <freemarker.template._ObjectWrappers: freemarker.template.SimpleObjectWrapper SAFE_OBJECT_WRAPPER>;	specialinvoke $r18.<freemarker.template.SimpleSequence: void <init>(java.util.Collection,freemarker.template.ObjectWrapper)>($r4, $r3);	return $r18
;block_num 4