unit UObjectFunctions;

interface

type
  TObjectFunctions = class
  published
    class procedure SetPrimitiveTypeProperty(Obj: TObject; const PropertyName: string; Value: Variant);
    class procedure SetObjectProperty(Obj: TObject; const PropertyName: string; Value: TObject);
  end;

implementation

uses TypInfo;

{ TObjectFunctions }

class procedure TObjectFunctions.SetObjectProperty(Obj: TObject;
  const PropertyName: string; Value: TObject);
begin
  if IsPublishedProp(Obj, PropertyName) then
   begin
    case PropType(Obj, PropertyName) of
     tkClass: SetObjectProp(Obj, PropertyName, Value);
    end;
   end
  else raise EPropertyError.CreateFmt('Property %s is not published', [PropertyName]);
end;

class procedure TObjectFunctions.SetPrimitiveTypeProperty(Obj: TObject;
  const PropertyName: string; Value: Variant);
begin
  if IsPublishedProp(Obj, PropertyName) then
   begin
    case PropType(Obj, PropertyName) of
     tkChar, tkString, tkLString: SetStrProp(Obj, PropertyName, Value);
     tkInteger: SetOrdProp(Obj, PropertyName, Value);
     tkFloat: SetFloatProp(Obj, PropertyName, Value);
    end;
   end
  else raise EPropertyError.CreateFmt('Property %s is not published', [PropertyName]);
end;

end.
