pageextension 50100 CustomerListExt extends "Customer List"
{
    layout
    {
        addbefore(Control1)
        {
            usercontrol(Carousel; "Carousel Control")
            {
                ApplicationArea = all;
                trigger OnStartup()
                var
                    JObject: JsonObject;
                    Slides: JsonArray;
                begin
                    Slides.Add(AddSlide('Keep your promises', 'check before you make a promise', '//cdn.pixabay.com/photo/2015/04/23/21/59/tree-736877_960_720.jpg'));
                    Slides.Add(AddSlide('Never forget', 'always register your conversations to ensure you follow-up promptly', '//unsplash.it/1025/200'));
                    Slides.Add(AddSlide('Qualify', 'be picky about which opportunities to spend time on', '//picsum.photos/1024/201'));
                    JObject.Add('slides', Slides);
                    CurrPage.Carousel.SetCarouselData(JObject);
                end;
            }
        }
    }

    local procedure AddSlide(Title: Text; Description: Text; Image: Text): JsonObject
    var
        Slide: JsonObject;
    begin
        Slide.Add('title', Title);
        Slide.Add('description', Description);
        Slide.Add('image', Image);
        exit(Slide);
    end;
}