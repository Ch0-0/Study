# API 호출하여 알림톡 발송
*Last Update 2023.07.19

##목차

- [API컨트롤러](#API-컨트롤러)

## API 컨트롤러

@Controller
@CrossOrigin(origins = {"URL","URL"...}) //접근허용 URL
@RequestMapping(value = "/tax/ai/")
public class SmsSendController {
  private static final String ENC_KEY = ""; //암호화 키
  private static final String PHONE_NO_KEY = ""; //암호화 키
  private static final String DATE_KEY = ""; //암호화 키

  /******************************************************************
  private final Logger LOG = LoggerFactory.getLogger(this.getClass().getName());

  @Autiwired
  private SmsSendService smsSendService;

  /******************************************************************

  /**
  * sms발송
  *
  * @param commandMap
  * @param request
  * @param model
  * @return
  * @throws Exception
  */

  @RequestMapping(value = "smsSend.do", method = RequestMethod.POST)
  public ModelAndView smsSend(CommandMap commandMap, HttpServletRequest request) throws Exception {

    String uri =request.getServletPath();
    ModelAndView mv = new ModelAndView("jsonView");
    ResponseObj resobj = new ResponseOjb();


  }


}
